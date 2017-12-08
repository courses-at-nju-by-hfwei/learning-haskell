-- module InteractWith where (WARNING: no such a line!!!)

import System.Environment (getArgs)

interactWith function inputFile outFile = do
  input <- readFile inputFile
  writeFile outFile (function input)

main = mainWith myFunction
  where mainWith function = do
          args <- getArgs
          case args of
            [input, output] -> interactWith function input output
            _ -> putStrLn "error: exactly two arguments needed"

        myFunction = id
