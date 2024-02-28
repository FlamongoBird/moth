import std/strutils


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
