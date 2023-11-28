module Window where
import qualified SDL
import SDL.Vect
import Foreign.C.Types
import Control.Monad (unless)
import Data.Text (Text, pack)

contextMajor, contextMinor :: CInt
(contextMajor, contextMinor) = (4, 2)
--OpenGL 420

createWindow :: IO SDL.Window
createWindow = do 
    SDL.initialize [SDL.InitTimer, 
                SDL.InitAudio,
                SDL.InitVideo,
                SDL.InitJoystick,
                SDL.InitGameController,
                SDL.InitEvents]

    SDL.createWindow (pack "Somnium") SDL.defaultWindow {
        SDL.windowInitialSize = V2 500 500, 
        SDL.windowGraphicsContext = SDL.OpenGLContext SDL.defaultOpenGL {
            SDL.glProfile = SDL.Core SDL.Normal 4 2}
        }
    -- So far the default Window resolution, change this later


