import CodeJamLib (lastWord)

main :: IO ()
main = do
    t <- fmap read getLine
    mapM_ readCase [1..t]

readCase :: Int -> IO ()
readCase i = do
    s <- getLine
    putStrLn . outputString $ lastWord s
    where
        outputString v = "Case #" ++ (show i) ++ ": " ++ v
