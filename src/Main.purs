module Main where

import Custom.Prelude

import Custom.Concur as C
import Effect (Effect)

hello :: forall a. C.Widget C.HTML a
hello = do
  _ <- C.button [ C.onClick ] [ C.text "Say Hello" ]
  C.text "Hello Sailor!"

main :: Effect Unit
main = C.runWidgetInDom "root" hello
