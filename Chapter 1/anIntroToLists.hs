-- An intro to Lists

-- We can concatenate lists like this
oneToFive = [1, 2, 3, 4, 5]
sixToTen = [6, 7, 8, 9, 10]
oneToTen = oneToFive ++ sixToTen

-- It works for Strings too because they are also lists
helloWorld = "Hello" ++ " " ++ "world!"

-- BE CAREFUL: Using the `++` operator is dangerous because it has to walk through the whole list on the left side


-- You can also use the `:` (cons) operator to add something to the beginning of a list
zeroToTen = 0:oneToTen

-- [1, 2, 3] is actually syntactic sugar for:
oneToThree = 1:2:3:[]
-- Notice that `:` always needs a list to its right side, that's why we have `[]` after `3`

-- To get something from a specific index we can use `!!`
numberZero = zeroToTen!!0

-- Comparing lists
-- When comparing lists the elements are compared against others with the same index
firstComparison = oneToThree == [1, 2, 3]

-- This will be true
secondComparison = [1, 1, 1] > [0, 999, 999]

-- `head` gets the first element from a list
-- `tail` gets every element except the head
-- `last` gets the last element
-- `init` gets every element except the last one
listHead = head oneToTen -- 1
listTail = tail oneToTen -- [2, 3, 4, 5, 6, 7, 8, 9, 10]
listLast = last oneToTen -- 10
listInit = init oneToTen -- [1, 2, 3, 4, 5, 6, 7, 8, 9]

-- `length` returns the length of a list
listLength = length oneToTen -- 10

-- `null` tells if a list is empty
empty = null []
notEmpty = null [1, 2, 3]

-- `reverse` reverses a list
threeToOne = reverse oneToThree

-- `take` takes X elements from the beginning of the list
oneToSix = take 6 oneToTen

-- `drop` drops X elements from the beginning of the list and returns the others
sevenToTen = drop 6 oneToTen

-- `maximum` and `minimum` are pretty much self explanatory
ten = maximum sixToTen
six = minimum sixToTen

-- `sum` and `product` calculate sums and products from lists
fiftyFive = sum oneToTen
oneHundredAndTwenty = product oneToFive

-- `elem` tells if something belongs to a list
belongs = 4 `elem` oneToTen
doesNotBelong = 11 `elem` oneToTen