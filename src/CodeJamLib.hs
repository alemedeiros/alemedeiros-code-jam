-- | Google Code Jam library, this contains the functions of the solution
-- itself, they are separeted from the inpure IO code.
module CodeJamLib
    (
        -- * Exported functions
        countSheep,
        countFlips,
        findGoldTiles,
    ) where

-- | Counting Sheep
--
-- 2016 Qualification: Problem A
countSheep :: Int -> Maybe Int
countSheep 0 = Nothing
countSheep n = Just (countSheepAux (getDigits n) n)
    where
        countSheepAux :: [Bool] -> Int -> Int
        countSheepAux ds nn
            | and ds = nn
            | otherwise = countSheepAux (addDigits ds (nn+n)) (nn+n)
        addDigits :: [Bool] -> Int -> [Bool]
        addDigits ds x = zipWith (||) ds (getDigits x)
        getDigits :: Int -> [Bool]
        getDigits 0 = replicate 10 False
        getDigits x = zipWith (||) (take 10 curDigit) (getDigits (div x 10))
            where
                curDigit :: [Bool]
                curDigit = (replicate (mod x 10) False) ++ (True : falses)
                falses :: [Bool]
                falses = replicate 10 False

-- | Revenge of the Pancakes
--
-- 2016 Qualification: Problem B
countFlips :: String -> Int
countFlips       [] = undefined
countFlips st@(f:_) = countFlipsAux f st
    where
        countFlipsAux '+' [] = 0
        countFlipsAux '-' [] = 1
        countFlipsAux  _  [] = undefined
        countFlipsAux l (h:t)
            | l == h    = countFlipsAux l t
            | otherwise = 1 + countFlipsAux h t

-- | Fractiles
--
-- 2016 Qualification: Problem D
findGoldTiles :: Int -> Int -> Int -> [Int]
findGoldTiles k c s
    | s * c < k = []
    | s == k = [1..k]  -- Small input solution
    | otherwise = undefined
