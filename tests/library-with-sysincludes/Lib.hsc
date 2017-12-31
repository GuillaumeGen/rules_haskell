module Lib (crc) where

import Foreign.Ptr
import Foreign.C.Types

#include <zlib.h>

foreign import ccall crc32 :: CLong -> Ptr () -> CInt -> IO ()

crc = crc32 0 nullPtr 0

z = #{size struct gz_header_s}
