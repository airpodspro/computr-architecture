.data
        num: .word 5
.text

main:
        la  s0, num            # s0 = num address
        lw  s0, 0(s0)          # load in the number at the address
        li  s1, 1              # load immediate 1 in s1
        blt  s0, s1, end       # see if the answer is fib[0] or fib[1]
        sub s1, s0, s1         # get number of doing loop
        li  t0, 0              # set initiall prefib
        li  s0, 1              # set initial fib
        
loop: 
        mv  t1, s0             # keep original fib
        add  s0, s0, t0        # calculate next fib
        mv  t0, t1             # replace prefib by original fib 
        addi  s1, s1, -1       # count how many times left
        bgt  s1, zero, loop    # if s1 > 0 go back loop
        
end:
        mv  a0, s0             # print result
        li  a7, 1
        ecall
        
exit: