from z3 import *

s = Solver()

flag = [BitVec(f'flag_{i}', 8) for i in range(24)]

def S(i):
    return SignExt(32, flag[i])

s.add( S(9) * (S(0) ^ (S(12) | S(13))) == 4902 )
s.add( (S(20) ^ ((S(10) | S(14)) - S(22))) == -64 )
s.add( (S(10) ^ S(7)) - S(12) - S(2) == -71 )
s.add( S(11) * (S(16) & (S(7) ^ S(20))) == 8930 )
s.add( S(7) * (S(15) ^ (S(8) * S(1))) == 278822 )
s.add( (S(20) | (S(8) ^ S(1) ^ S(22))) == 115 )
s.add( (S(1) ^ (S(11) + (S(20) | S(18)))) == 229 )
s.add( (S(21) & (S(4) * S(0) * S(13))) == 80 )
s.add( (S(22) ^ S(6) ^ (S(12) + S(4))) == 140 )
s.add( (S(6) & S(3) & (S(17) - S(19))) == 0 )
s.add( S(5) * (S(18) + (S(2) ^ S(3))) == 6560 )
s.add( S(14) + (S(6) & (S(0) * S(18))) == 64 )
s.add( (S(5) & (S(4) | S(2))) == 82 )
s.add( S(12) * (S(9) ^ S(0)) - S(15) == 1996 )
s.add( (S(11) ^ (S(21) + S(12) * S(17))) == 8692 )
s.add( (S(17) ^ (S(22) + (S(12) & S(22)))) == 173 )
s.add( S(17) * (S(23) & (S(16) ^ S(23))) == 105 )
s.add( (S(1) & (S(2) - S(0))) - S(21) == -65 )
s.add( S(2) * (S(0) ^ (S(22) * S(14))) == 475020 )
s.add( S(18) * (S(4) - S(15)) - S(20) == 859 )
s.add( S(1) * S(5) * (S(1) - S(8)) == 12546 )
s.add( S(3) + S(14) - S(16) - S(6) == -38 )
s.add( (S(11) & S(21) & (S(21) ^ S(23))) == 2 )
s.add( S(19) + (S(13) & S(23)) - S(6) == 99 )
s.add( (S(4) ^ S(16) ^ (S(23) + S(11))) == 217 )
s.add( S(8) + (S(3) ^ (S(13) * S(13))) == 13666 )
s.add( (S(8) | (S(1) ^ (S(15) & S(21)))) == 113 )
s.add( (S(11) ^ ((S(15) & S(14)) - S(2))) == -96 )

s.add(flag[0] == ord('L'))
s.add(flag[1] == ord('3'))
s.add(flag[2] == ord('A'))
s.add(flag[3] == ord('K'))
s.add(flag[4] == ord('{'))

while s.check() == sat:
    m = s.model()
    result = ""
    sorted_model = sorted([(d.name(), m[d]) for d in m], key=lambda x: int(x[0].split('_')[1]))
    for var_name, value in sorted_model:
        result += chr(value.as_long())

    print(result)
else:
    print("RIP")

# L3AK{R3m0V&_Qu@n~iF!3rs}
