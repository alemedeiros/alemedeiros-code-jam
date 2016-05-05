import CodeJamLib (countFlips)

main :: IO ()
main = do
    t <- fmap read getLine
    mapM_ readCase [1..t]

readCase :: Int -> IO ()
readCase i = do
    s <- getLine
    putStrLn . outputString $ countFlips s
    where
        outputString v = "Case #" ++ (show i) ++ ": " ++ (show v)
