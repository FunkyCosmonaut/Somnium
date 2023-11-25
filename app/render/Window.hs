module Window where
import SDL
import Control.Monad (unless)
import Data.Text (Text, pack)

drawWindow :: IO()
drawWindow = do 
    initialize [InitTimer, 
                InitAudio,
                InitVideo,
                InitJoystick,
                InitGameController,
                InitEvents]
    window <- createWindow (pack "BorealisTech") defaultWindow
    delay 5000
    destroyWindow window
    quit