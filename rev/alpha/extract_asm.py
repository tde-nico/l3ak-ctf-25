from libdebug import debugger, libcontext
from capstone import Cs, CS_ARCH_X86, CS_MODE_64

md = Cs(CS_ARCH_X86, CS_MODE_64)
md.detail = True

d = debugger("./chal")
p = d.run()

first_map = d.maps[0]
pie = first_map.start
print("PIE %#x" % pie)

MAIN = pie + 0x001310
print("MAIN ADDR %#x" % MAIN)

def ppretty_disasm(addr, code):
    for i in md.disasm(code, addr):
        line = f"{i.address:#x}:\t{i.mnemonic}\t{i.op_str}"

        if i.mnemonic.startswith(('j', 'call')) and i.operands:
            target = i.operands[0].imm
            rel_offset = target - i.address - i.size
            line += f"  ; rel: {rel_offset:+#x}"

        print(line)

        if i.mnemonic == 'int3':
            break

        if i.mnemonic == 'mov' and i.op_str.startswith("r11d"):
            continue

def show_map(start, stop):
    code = d.memory[start, stop - start]
    ppretty_disasm(start, code)
    print()

hits=0
def sigill(t, catch):
    global hits
    hits += 1
    now = t.regs.rip
    show_map(MAIN, now)


# def aa(t, catch):
#     print(t.regs.rax)
#     input()
# print(pie + 0x1345)
# bp = d.breakpoint(pie + 0x1345, callback=aa, hardware=True)

d.catch_signal(4, callback=sigill)
flag = "L3AK{aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa}"
p.sendline(''.join(flag).encode())
d.cont()
d.wait()

print("HANDLER HITS", hits)


