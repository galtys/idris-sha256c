module SHA256

%include C "sha256.h"
%link C "sha256.o"

export
sha256' : String -> IO String
sha256' x_in = foreign FFI_C "test_sha256_abc" (String -> IO String) x_in

export
sha256 : String -> String
sha256 x_in = unsafePerformIO (sha256' x_in)
