module Keyboard where

import SDL

isEscapeKey :: Event -> Bool
isEscapeKey e = case eventPayload e of
    KeyboardEvent ke -> isPressedEscape ke
    _ -> False

isPressedEscape :: KeyboardEventData -> Bool
isPressedEscape ke =
    keyboardEventKeyMotion ke == Pressed &&
    keysymKeycode (keyboardEventKeysym ke) == KeycodeEscape

processEvents :: IO Bool
processEvents = do
    events <- pollEvents
    return $ any isEscapeKey events