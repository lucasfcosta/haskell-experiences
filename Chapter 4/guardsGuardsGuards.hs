-- Guards, Guards Guards

-- Testing guards by implementing a function that tells me about my BMI
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= skinny = "EAT MORE"
    | bmi <= normal = "GOOD JOB"
    | bmi <= fat = "EAT LESS"
    | otherwise = "OTHER STUFF"
    where   bmi = weight / height ^ 2
            (skinny, normal, fat) = (18.5, 25.0, 30.0)

-- Returning initials with pattern matching on the where clause
initials :: String -> String -> String
initials first last = [f] ++ ". " ++ [l] ++ "."
    where   (f:_) = first
            (l:_) = last

-- Defining a function inside where so that we can calculate multiple BMIs
bmis :: (RealFloat a) => [(a, a)] -> [a]
bmis bmiTuple = [ bmi w h | (w, h) <- bmiTuple ]
    where bmi weight height = weight / height ^ 2
