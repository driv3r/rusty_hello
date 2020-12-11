# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :rust_build do
  `cargo rustc --release`
  `mv -f ./target/release/librusty_hello.so ./lib/rusty_hello/`
end

task :rust_clean do
  `cargo clean`
  `rm -f ./lib/rusty_hello/librusty_hello.so`
end

task clean: :rust_clean
task build: :rust_build
task spec: :rust_build

task default: %i[spec]
