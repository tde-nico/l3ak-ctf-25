start = idc.get_name_ea_simple("main")
code = idc.get_name_ea_simple("code")

block = 1

for i in range(64):
    addr = start + i
    addr2 = code + block*64 + i

    newval = get_bytes(addr, 1)[0] ^ get_bytes(addr2, 1)[0]
    patch_byte(addr, newval)

patch_byte(start + 64, 55)



'''
mov     esi, esp
mov     edi, eax
call    sub_16C8
mov     esi, ebx
mov     edi, eax
call    sub_153B
cmp     eax, 1326h
setz    al
movzx   edx, al
'''