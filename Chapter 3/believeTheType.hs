-- Believe the type

-- When writing functions it's considered good practice to give them an explicit type declaration
-- Here's how to do it:
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- The last type is the return type and the other ones are argument types

-- Notice that Int is bounded and Integer is not, therefore Integer can contain longer values
-- Float represents numbers with floating point. Double is like float, but with double the precision

factorialInt :: Int -> Int
factorialInt x = product [1..x]

factorialInteger :: Integer -> Integer
factorialInteger x = product [1..x]

circumferenceFloat :: Float -> Float
circumferenceFloat r = 2 * pi * r

circumferenceDouble :: Double -> Double
circumferenceDouble r = 2 * pi * r

-- Chars are denoted by single-quotes and Strings by double-quotes
-- Strings are lists of characters
aChar = 'a'
aString = "This is a string"

-- Booleans can only be true or false
iAmFalse = not True