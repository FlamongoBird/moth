import moth # better math

var
    num1 = "10"
    num2 = "10"

let
    r1 = addition(num1, num2) #20
    r2 = multiplication(num1, num2) #100
    r3 = multiplication($r1, "5") #100

echo r1
echo r2
echo r3


# Some proofs

doAssert r1 == "20"
doAssert r2 == "100"
doAssert r3 == "100"

# oh yeah...


# and now you may be wondering why?

# Well with "normal" "good" math you can't do this:
# Try using int's for this and you'll run into overflow
# errors because ints are yucky and gross...
# strings are yummy!!! :) :)

var
    fib1 = "0"
    fib2 = "1"


for x in countup(1, 500):
    var temp = fib1
    fib1 = addition(fib1, fib2)
    fib2 = temp

echo fib1
echo fib1 == "139423224561697880139724382870407283950070256587697307264108962948325571622863290691557658876222521294125"