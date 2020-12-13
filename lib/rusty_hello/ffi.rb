require 'ffi'

module RustyHello

  module FFI

    extend ::FFI::Library

    lib_name =
      case ::FFI::Platform::LIBSUFFIX
      when "so", "dylib" then "librusty_hello"
      when "dll" then "rusty_hello"
      end

    ffi_lib File.expand_path("#{lib_name}.#{::FFI::Platform::LIBSUFFIX}", __dir__)

    attach_function :fib, [:uint], :uint

  end
end

