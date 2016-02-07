-- Texas Ranges

-- Creating a list from one to twenty
oneToTwenty = [1..20]

-- The whole alphabet
alphabet = ['a'..'z']

-- Here we can also use steps to get only some numbers from a list
evensFromOneToTwenty = [2, 4..20]
oddsFromOneToTwenty = [1, 3..20]

-- To create a descending list we must use a step
twentyToOne = [20, 19..1]

-- We can create infinite lists with Haskell because it's lazy
-- When creating infinite lists with Haskell it won't try to evaluate the whole list
-- Therefore, to get the 10 first multiples of 13 we just need to write:
tenFirstMultiplesOfThirteen = take 10 [13, 26..] 

-- `cycle` takes a list and cycles it into an inifinite list
infiniteOneToThree = cycle [1, 2, 3]
twoTimesOneToThree = take 6 infiniteOneToThree

-- `repeat` repeats a single element into an infinite list
infiniteFive = repeat 5

-- `replicate` replicates some number X times into a list
numberOfTheBeast = replicate 3 6