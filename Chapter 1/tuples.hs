-- Tuples

-- This is a tuple
me = ("Lucas", "Fernandes", 20)

-- Tuples are rigid, each combination of types is a new kind of tuple
-- You can't put different kind of tuples into a list, but you can create a list of tuples with same types
you = ("Name", "Surname", 1337)

listOfTuples = [you, me]

-- `fst` takes the first component of a pair (a.k.a. a tuple with two elements)
lol = fst ("LOL", 0)

-- `snd` takes the second component of a pair
zero = snd ("LOL", 0)

-- `zip` takes two lists together and pairs the elements
-- PS.: I really think `zip` is the perfect name for this, the guy who had this idea is a genius
numbersAndNames = zip [1, 2, 3, 4, 5] ["one", "two", "three", "four", "five"]

-- If one list is bigger than another, the bigger one gets cut
-- We can also do this using an infinite list because Haskell is lazy
fruits = zip [1..] ["Apple", "Banana", "Strawberry"]