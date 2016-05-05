import CodeJamLib (countSheep)

main :: IO ()
main = do
    tStr <- getLine
    let t = read tStr
    mapM_ readCase [1..t]

readCase :: Int -> IO ()
readCase i = do
    n <- fmap read getLine
    putStrLn . outputString $ countSheep n
    where
        outputString Nothing = "Case #" ++ (show i) ++ ": INSOMNIA"
        outputString (Just v) = "Case #" ++ (show i) ++ ": " ++ (show v)
