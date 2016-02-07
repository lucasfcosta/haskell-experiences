-- Set Comprehensions

-- To create a list comprehension we define a rule for every X and then the group from which we'll pick our Xs
firstTenEvens = [x * 2 | x <- [1..10]]

-- Now let's get all elements that doubled are greater than or equal to 12
-- This time we will also need a condition after the input group
greaterOrEqualTwelve = [x * 2 | x <- [1..10], x >= 12]

-- The output function can be basically anything, for example
-- PS.: `odd` returns true for odd numbers
boomsAndBangs listOfNumbers = [if x < 10 then "BOOM!" else "BANG!" | x <- listOfNumbers, odd x]

-- We can also draw from several lists, for example
allPossibleProducts firstList secondList = [x * y | x <- firstList, y <- secondList]

allPossibleProductsAboveFifty firstList secondList = [x * y | x <- firstList, y <- secondList, x * y > 50]

-- Now let's create our own version of `length`
-- `_` means that we are not interested in the value we're drawing from the list, so we won't assign it to a variable
length' list = sum [1 | _ <- list]