-- Recursiveness

-- Gets the biggest value in a list

-- This version uses guards
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "no max for empty lists"
maximum' [x] = x
maximum' (x:y)
  | x > maxTail = x
  | otherwise = x
  where maxTail = maximum' y

-- We can improve this by using `max`
shortMax :: (Ord a) => [a] -> a
shortMax [] = error "no max for empty lists"
shortMax [x] = x
shortMax (x:y) = max x (shortMax y)

-- Replicate
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
  | n <= 0 = []
  | otherwise = x:replicate' (n - 1) x

-- This one fallsthrough when n is not <= 0
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
  | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n - 1) xs

-- Reverses a list
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- Repeat
-- Repeats an element infinitely
-- If we do something like: take 5 (repeat 3) we can finish evaluating
-- However, if we just do repeat 3 we keep going ad infinitum
repeat' :: a -> [a]
repeat' x = x : repeat' x

-- Zip
-- This one has two edge conditions
zip' :: [a] -> [b] -> [(a, b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = [(x, y)] ++ (zip' xs ys)

-- Elem
-- Finds an element in the list
elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (x:xs)
  | a == x = True
  | otherwise = elem' a xs

-- Quicksort
-- OH MY GOD THIS IS SO ELEGANT
-- I WANNA THROW A PARTY FOR THIS ALGORITHM
-- OH GOD HASKELL WHY U SO GOOD
-- PLS TELL ME, I CAN'T TAKE IT
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
    let smallerSorted = quickSort [ a | a <- xs, a <= x ]
        biggerSorted = quickSort [ a | a <- xs, a > x ]
    in smallerSorted ++ [x] ++ biggerSorted
