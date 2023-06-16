{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use list literal" #-}

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = (if x > 100
                        then x
                        else x * 2) + 1

lostNumbers = [4,8,15,16,23,48]

firstElem :: [a] -> Maybe a
firstElem xs = case xs of
    [] -> Nothing
    (x:_) -> Just x

listComprehension = [x * 2 | x <- [1..10]]


main = do
    print (doubleMe 5)
    print (doubleUs 5 5)
    print (doubleSmallNumber 99)
    print (doubleSmallNumber 103)
    print ([1,2,3] ++ [4,5,6])
    print ('A':" SMALL CAT")
    print [1, 2, 3]
    print [3]
    print (3:[])
    print (head [5,4,3,2,1])
    print (tail [5,4,3,2,1]) {-# Chop off list's head #-}
    print (init [5,4,3,2,1]) {-# Chop off list's tail #-}
    print (take 3 [1,2,3,4])
    print(firstElem [1,2,3,4,5])
    print (replicate 3 (firstElem [1,2,3,4,5]))
    print listComprehension
