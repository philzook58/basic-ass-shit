module Plot where

import Graphics.Rendering.Chart.Easy
import Graphics.Rendering.Chart.Backend.Cairo -- Chart-cairo
import Graphics.Image as I -- hip

-- https://github.com/timbod7/haskell-chart/wiki/example-1
filename = "example1_big.png"

main = do 
        toFile def filename $ plot (line "a sine" [[ (x :: Double, sin x) | x <- [0, 0.1 .. 2 * pi]]])
        plotimg <- readImageRGB VU filename -- yeah,I want the plot to pop up
        displayImage plotimg
        print "Press Enter to Quit"
        getLine
