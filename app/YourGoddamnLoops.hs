module YourGoddamnLoops where

import Control.Monad (forM)
import Data.IORef
import Control.Monad.Loops

-- you sicken me

main = do
        forM [1 .. 10] (\i -> 
                           print i
                       )
        ref <- newIORef 0 -- mutable reference inititlaized to 0
        whileM (fmap (<= 10) (readIORef ref))
               (do modifyIORef' ref (+ 1))
        i <- (readIORef ref)
        print i

-- DO YOU SEE WHAT YOU MADE ME DO