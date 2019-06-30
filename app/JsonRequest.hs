{-# LANGUAGE OverloadedStrings, DeriveGeneric #-}
module JsonRequest where

import Data.Aeson
import Network.Wreq
import GHC.Generics
import Control.Lens

data ToDo  = ToDo {
    userId :: Int,
    id :: Int,
    title :: String,
    completed :: Bool
  } deriving (Generic, Show)
instance ToJSON ToDo


instance FromJSON ToDo

my_url = "https://jsonplaceholder.typicode.com/todos/1"

main = do r <- get my_url
          print $ ((decode $ r ^. responseBody) :: Maybe ToDo) -- ((decode $ r ^. responseBody) :: Maybe ToDo)