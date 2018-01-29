$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require "simplecov"
SimpleCov.start

require 'test/unit'
require 'yaml'
require 'chinese_faker'
