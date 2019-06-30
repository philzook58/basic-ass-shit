module SimpleIO where

import System.IO
import System.Environment  

main =  do
    print [1,2,3] -- print stuff
    print (Just 19022.32)
    x <- getLine -- read from command line
    print x
    f <- readFile "index.html"
    print f
    appendFile "index.html" "\nOh Wow"
    args <- getArgs
    print args


-- http://learnyouahaskell.com/input-and-output