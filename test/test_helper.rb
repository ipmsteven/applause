require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'applause'

require 'minitest/autorun'
require 'mocha/mini_test'
