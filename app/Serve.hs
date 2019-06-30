{-# LANGUAGE OverloadedStrings #-}
module Serve where

import Web.Scotty

main = scotty 8080 $ do
    get "/" $ file "index.html"