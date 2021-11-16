import math

def my_sqrt(a):
    x = 3
    while True:
        y = (x + a/x) / 2.0
        if y == x:
            break
        x = y
    return(x)

def test_sqrt():
    diff = 0
    d = 0
    a = 1
    while a < 26:
        msqrt = my_sqrt(a)
        mthsqrt = math.sqrt(a)
        if msqrt > mthsqrt:
            d = msqrt - mthsqrt
        else:
            d = mthsqrt - msqrt
        print("a = ", str(a), " | my_sqrt(a) = ", str(msqrt), " | math_sqrt(a) = ", str(mthsqrt), " | diff = ", str(d))
        a = a + 1
