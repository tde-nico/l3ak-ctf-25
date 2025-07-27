from z3 import *
import struct

def load_db():
	with open('user.db', 'rb') as f:
		v_size = struct.unpack('<Q', f.read(8))[0]
		v_data = [struct.unpack('<I', f.read(4))[0] for _ in range(v_size)]
		h_size = struct.unpack('<Q', f.read(8))[0]
		h_data = [struct.unpack('<I', f.read(4))[0] for _ in range(h_size)]
		tolerance = struct.unpack('<I', f.read(4))[0]
	return v_data, h_data, tolerance


def in_ellipse():
	relevant = []
	for j in range(500):
		for k in range(500):
			if 28900 * (k - 250) * (k - 250) + 20736 * (j - 250) * (j - 250) > 598790400 and j > 150:
				relevant.append((j, k))
	return relevant


def gray(pixel):
	return (pixel[0] + pixel[1] + pixel[2]) / 3


def sort_bubble(lst):
	def bubble_up(arr, j):
		new_asst = []
		for i in range(len(arr) - 1):
			x = arr[i]
			y = arr[i + 1]
			x1, y1 = BitVec(f'fresh_x_{j}_{i}', 8), BitVec(f'fresh_y_{j}_{i}', 8)
			c = If(x <= y, And(x1 == x, y1 == y), And(x1 == y, y1 == x))
			arr[i] = x1
			arr[i + 1] = y1
			new_asst.append(c)
		return arr, new_asst

	cstr = []
	for j in range(len(lst)):
		lst, cst = bubble_up(lst, j)
		cstr.extend(cst)
	return lst, cstr


def calculate_bounds(filtered_grays):
	size = len(filtered_grays)
	v9 = If(size & 1 == 0, size - 1, size)

	# half = filtered_grays[(v9 >> 1) + 1]
	one_quarter = v9 >> 1
	one_quarter = If(v9 & 2 == 0, one_quarter - 1, one_quarter)

	three_quarters = filtered_grays[(one_quarter >> 1) + one_quarter]
	q1 = filtered_grays[one_quarter >> 1]

	v20 = three_quarters - q1
	upper_bound = three_quarters + v20 + (v20 >> 1)
	lower_bound = q1 - (v20 + (v20 >> 1))

	lower_bound = If(lower_bound < 0, 0, lower_bound)

	return lower_bound, upper_bound


def main():
	v_ref, h_ref, tolerance = load_db()
	size = 500

	s = Solver()
	# image = [[[BitVec(f'pixel_{i}_{j}_{c}', 8) for c in range(3)] for j in range(size)] for i in range(size)]
	image = [[BitVec(f'pixel_{i}_{j}', 8) for j in range(size)] for i in range(size)]

	# filtered_grays = []
	# print(len(in_ellipse()))
	# for j, k in in_ellipse():
	# 	filtered_grays.append(gray(image[j][k]))

	# lower_bound = 20
	# upper_bound = 235
	lower_bound = BitVec('lower_bound', 8)
	upper_bound = BitVec('upper_bound', 8)
	# s.add(And(lower_bound < 100, upper_bound > 155))
	
	print('Horizontal')
	horizontal = [0] * size
	for i in range(size):
		for j in range(size):
			horizontal[i] += If(And(lower_bound < image[i][j], image[i][j] < upper_bound), 1, 0)
	
	print('Vertical')
	vertical = [0] * size
	for j in range(size):
		for i in range(size):
			vertical[i] += If(And(lower_bound < image[i][j], image[i][j] < upper_bound), 1, 0)

	print('Contraints')
	for k in range(size):
		s.add(Or(
			And(horizontal[k] - h_ref[k] <= tolerance, horizontal[k] - h_ref[k] >= 0),
			And(h_ref[k] - horizontal[k] <= tolerance, h_ref[k] - horizontal[k] >= 0),
		))
	for k in range(size):
		s.add(Or(
			And(vertical[k] - v_ref[k] <= tolerance, vertical[k] - v_ref[k] >= 0),
			And(v_ref[k] - vertical[k] <= tolerance, v_ref[k] - vertical[k] >= 0),
		))

	
	print('Checking...')
	if s.check() == sat:
		print('sat')
		m = s.model()
		print(m[lower_bound].as_long(), m[upper_bound].as_long())
		final = [[int(m[image[i][j]].as_long()) for j in range(size)] for i in range(size)]
		print(final)
	else:
		print('unsat')
		exit(1)


if __name__ == "__main__":
	main()
