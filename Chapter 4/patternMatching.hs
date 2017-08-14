-- Pattern Matching

-- Matches patterns from top to bottom
lucky :: (Integral a) => a -> String
lucky 7 = "SEVEN!"
lucky x = "Not seven. LOL EZ"

-- Recursive factorial definition
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial a = a * factorial (a - 1)

-- Exhaustive pattern match failing if we don't pass either "a", "b" or "c"
broName :: Char -> String
broName 'a' = "Albroth"
broName 'b' = "Broseph"
broName 'c' = "Charbro"

-- Triple handling
first :: (a, b, c) -> a
first (a, _, _) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c

-- Creating our own version of head
head' :: [a] -> a
head' [] = error "CAN'T GET HEAD OF NOTHING!"
head' (x:_) = x

-- Converting length to phrases
tell :: (Show a) => [a] -> String
tell [] = "This list is empty..."
tell (x:[]) = "This list has one element, which is: " ++ show x
tell (x:y:[]) = "This list has two elements, which are: " ++ show x ++ ", " ++ show y
tell _ = "This list is too long. I'm tired."

-- Reimplementing length recursively
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:y) = 1 + length' y

