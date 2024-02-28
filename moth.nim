import std/strutils
import options


#[
    A lil goofy...
]#

proc makeSeq(str: string): seq[int] =
    for x in str:
        result.add(parseInt($x))

proc seqReverse(sqnce: seq[int]): seq[int] =
    result = @[]
    for r in countdown(sqnce.len - 1, 0):
        result.add sqnce[r]

proc joinToString(number: seq[int]): string = 
    for x in number:
        result.add($x)


proc addition*(n1, n2: string): string =
    var
        carry_the = 0
        num1 = n1.makeSeq()
        num2 = n2.makeSeq()
        output = newSeq[int]()

    while num1.len != num2.len:
        if num1.len > num2.len:
            num2.insert(0, 0)
        else:
            num1.insert(0, 0)
        
    for index in countdown(num1.len-1, 0):
        var
            number = num1[index] + num2[index] + carry_the
        if number > 9:
            number -= 10
            carry_the = 1
        else:
            carry_the = 0
        output.add(number)
    if carry_the != 0:
        output.add(carry_the)

    output.seqReverse().joinToString()



proc minus_equals_one*(number: seq[int], at: int): seq[int] =
    #[ it's fine this is just internal it's not public so it's ok ]#
    var
        number = number # bear with me

    if at > number.len:
        number[^(at-1)] = 0
        return number

    if number[^at] == 0:
        number[^at] = 9
        return minus_equals_one(number, at+1)
    
    number[^at] -= 1

    return number


proc isNotZero(s: seq[int]): bool =
    #[ Peak efficiency for this I swaer ]#
    for i in s:
        if i != 0:
            return true
    return false

iterator myCustomIteratorIMade(number: string): bool =
    #[ One must never ask why an iterator returns a boolean... ]#
    #[ Also do not ask why this is an iterator ]#
    var num = number.makeSeq()
    while num.isNotZero:
        num = num.minus_equals_one(1)
        yield true


proc multiplication*(num, times: string): string =
    #[ Mental Focus: Oh it's focused ]#
    var output = "0"
    for x in myCustomIteratorIMade(times):
        output = addition(output, num)

    return output