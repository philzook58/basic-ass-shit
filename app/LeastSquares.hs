module LeastSquares where

import Numeric.LinearAlgebra

n = 20
x = linspace n (-3,7::Double)
y0 = 3 * x

main = do
        noise <- randn 1 n
        let y = (flatten noise) + y0
        let sampleMatrix = (asColumn x) ||| (konst 1 (n,1))
        let sol = (sampleMatrix <\> y) 
        print $ "Best fit is y = " ++ show (sol ! 0) ++ " * x + " ++ (show (sol ! 1))


