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


for x in countup(1, 1000):
    var temp = fib1
    fib1 = addition(fib1, fib2)
    fib2 = temp

echo fib1
echo fib1 == "43466557686937456435688527675040625802564660517371780402481729089536555417949051890403879840079255169295922593080322634775209689623239873322471161642996440906533187938298969649928516003704476137795166849228875"