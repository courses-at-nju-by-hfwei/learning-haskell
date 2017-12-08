import System.Environment (getArgs)

main = mainWith myFunction
  where mainWith function = do
          args <- getArgs
          case args of
            [input, output] -> interactWith function input output
            _ -> putStrLn "error: exactly two arguments needed"

        myFunction = fixLines

interactWith :: (String -> String) -> FilePath -> FilePath -> IO ()
interactWith function inputFile outFile = do
  input <- readFile inputFile
  writeFile outFile (function input)

fixLines :: String -> String
fixLines = unlines . splitLines

splitLines :: String -> [String]
splitLines [] = []
splitLines cs =
  let (pre, suf) = break isLineTerminator cs
  in pre : case suf of
              ('\r' : '\n' : rest)  -> splitLines rest
              ('\r' : rest)         -> splitLines rest
              ('\n' : rest)         -> splitLines rest
              _                     -> []

isLineTerminator :: Char -> Bool
isLineTerminator c = c == '\r' || c == '\n'
