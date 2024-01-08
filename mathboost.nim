import nimpy
import math

proc fib(n:int): int {.exportpy.} =
    if n <= 1:
        return n
    else:
        return fib(n-1) + fib(n-2)

proc exp(x: int, n: int): int {.exportpy.} =
    if x == 1 or n == 0:
        return 1
    else:
        var result = 1
        var xCopy = x
        var nCopy = n
        while nCopy > 0:
            if nCopy mod 2 == 1:
                result *= xCopy
            xCopy = xCopy*xCopy
            nCopy = nCopy div 2
        return result
