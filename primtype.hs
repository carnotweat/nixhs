#!/usr/bin/env stack
-- stack --resolver lts-12.21 script
{-# LANGUAGE MagicHash #-}
  import GHC.Prim
import GHC.Magic
  import GHC.Types

main :: IO ()
  main =
      let loop idx total len =
                      case total +# idx of
                                    total' ->
                                                    case len +# 1# of
                                                                      len' ->
                                                                                          case idx of
                                                                                                                10000000# -> D# (int2Double# total' /## int2Double# len')
                                                                                                                                      _ -> loop (idx +# 1#) total' len'
     in print $ loop
