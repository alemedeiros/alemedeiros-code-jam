import CodeJamLib (findGoldTiles)

main :: IO ()
main = do
    tStr <- getLine
    let t = read tStr
    mapM_ readCase [1..t]

readCase :: Int -> IO ()
readCase i = do
    [k, c, s] <- fmap (map read . words) getLine
    putStrLn . outputString $ findGoldTiles k c s
    where
        outputString [] = "Case #" ++ (show i) ++ ": IMPOSSIBLE"
        outputString ts = "Case #" ++ (show i) ++ ": " ++ (showSol ts)
            where
                showSol = unwords . map show
