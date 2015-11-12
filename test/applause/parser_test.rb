require 'test_helper'

module Applause
  class ParserTest < Minitest::Test
    def test_parse
      args     = ['-a', 1, 2, '-b', 3, 4]
      flags    = ['-a', '-b']
      expected = [['-a', 1, 2], ['-b',3, 4]]

      assert_equal expected, Parser.new.parse(args, flags).to_a
    end
  end
end
