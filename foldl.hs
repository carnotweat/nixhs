import Data.List (foldl')

data State = State
    { stateSum :: Int
        , stateLen :: Int
            }

           incrState :: State -> Int -> State
           incrState (State s l) x = State (s + x) (l + 1)

           avgState :: State -> Double
           avgState (State s l) = fromIntegral s / fromIntegral l

           main :: IO ()
           main = print $ avgState $ foldl' incrState (State 0 0) [1..10000000]
