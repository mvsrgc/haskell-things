filterFun :: Integral a => a -> Bool
filterFun x = x `mod` 7 == 3

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

main = do
    print [x * 2 | x <- [1..10]]
    print [x * 2 | x <- [1..10], x * 2 >= 5]
    print [x * 2 | x <- [50..100], filterFun x]
    print (boomBangs [7..13])
    print ([x*y | x <- [2,5,10], y <- [8,10,11]])
