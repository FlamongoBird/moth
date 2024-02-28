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

echo "complete"
