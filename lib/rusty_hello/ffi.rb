require 'ffi'

module RustyHello

  module FFI

    extend ::FFI::Library

    ffi_lib File.expand_path("librusty_hello.#{::FFI::Platform::LIBSUFFIX}", __dir__)

    attach_function :fib, [:uint], :uint

  end
end

