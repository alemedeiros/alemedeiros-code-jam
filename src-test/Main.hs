import Test.Tasty
import Test.Tasty.HUnit
-- import Test.Tasty.SmallCheck

import CodeJamLib

main :: IO ()
main = defaultMain $ testGroup "Sample Input/Output" tests

tests :: [TestTree]
tests = [ testGroup "2016QR-A. Counting Sheep" countSheepTests
        , testGroup "2016QR-B. Revenge of the Pancakes" countFlipsTests
        ]

--------------------------------------------------------------------------------
-- Counting Sheep
-- 2016 Qualification: Problem A
countSheepTests :: [TestTree]
countSheepTests =
  [ testCase "Case #1" case_countSheep_1
  , testCase "Case #2" case_countSheep_2
  , testCase "Case #3" case_countSheep_3
  , testCase "Case #4" case_countSheep_4
  , testCase "Case #5" case_countSheep_5
  ]

case_countSheep_1 :: Assertion
case_countSheep_1 = countSheep 0    @?= Nothing

case_countSheep_2 :: Assertion
case_countSheep_2 = countSheep 1    @?= Just (10 :: Int)

case_countSheep_3 :: Assertion
case_countSheep_3 = countSheep 2    @?= Just (90 :: Int)

case_countSheep_4 :: Assertion
case_countSheep_4 = countSheep 11   @?= Just (110 :: Int)

case_countSheep_5 :: Assertion
case_countSheep_5 = countSheep 1692 @?= Just (5076 :: Int)

--------------------------------------------------------------------------------
-- Revenge of the Pancakes
-- 2016 Qualification: Problem B
countFlipsTests :: [TestTree]
countFlipsTests =
  [ testCase "Case #1" case_countFlips_1
  , testCase "Case #2" case_countFlips_2
  , testCase "Case #3" case_countFlips_3
  , testCase "Case #4" case_countFlips_4
  , testCase "Case #5" case_countFlips_5
  ]

case_countFlips_1 :: Assertion
case_countFlips_1 = countFlips "-"    @?= (1 :: Int)

case_countFlips_2 :: Assertion
case_countFlips_2 = countFlips "-+"   @?= (1 :: Int)

case_countFlips_3 :: Assertion
case_countFlips_3 = countFlips "+-"   @?= (2 :: Int)

case_countFlips_4 :: Assertion
case_countFlips_4 = countFlips "+++"  @?= (0 :: Int)

case_countFlips_5 :: Assertion
case_countFlips_5 = countFlips "--+-" @?= (3 :: Int)
