-- chapter07-io/CallingPure.hs

name2Reply :: String -> String
name2Reply name =
  "Pleased to meet you, " ++ name ++ ".\n" ++
  "Your name contains " ++ charcount ++ " characters."
  where charcount = show $ length name

main = do
  putStrLn "Greetings! What is your name?"
  inputStr <- getLine
  let outStr = name2Reply inputStr
  putStrLn outStr
