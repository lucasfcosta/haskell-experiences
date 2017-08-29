-- Baby's First Functions (Yes, "baby" actually means me)

-- A simple function
doubleMe x = x + x

-- Calling a function from another function
doubleAndSum x y = doubleMe x + doubleMe y

-- We can call them as infix functions using backticks on the functions' name
five = 10 `div` 2

-- Flow control
-- Details: In Haskell the `if`s are expressions, this means they always return a value.
-- 			Due to this every `if` statement requires an `else`.
doubleSmallNumber x = if x > 100
  then x
  else x * 2

-- Nice Thing
-- Details: * In haskell `'` is a valid character to use in a function name.
-- 			Usually it is used to denote a strict version of a function (one that is not lazy) or
--			a slightly modified version of a function or variable.
-- 			
--			* Functions also cannot begin with uppercase letters
conanO'Brien = "Conan O'Brian is nice."
