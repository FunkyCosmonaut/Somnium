module Window where
import SDL
import Control.Monad (unless)
import Data.Text (Text, pack)

drawWindow :: IO Window
drawWindow = do 
    initialize [InitTimer, 
                InitAudio,
                InitVideo,
                InitJoystick,
                InitGameController,
                InitEvents]
    createWindow (pack "Somnium") defaultWindow
    -- So far the default Window resolution, change this later
