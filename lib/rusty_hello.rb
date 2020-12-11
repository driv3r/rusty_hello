# frozen_string_literal: true

require_relative "rusty_hello/version"
require_relative "rusty_hello/ffi"

module RustyHello

  class Error < StandardError; end

  def self.[](n)
    FFI.fib(n)
  end

end
