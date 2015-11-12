require 'test_helper'

module Applause
  class RunnerTest < Minitest::Test
    def test_run
      args    = ['-a', 1, '-b', 2]
      options = { '-a': lambda {|a| puts a},
                  '-b': lambda {|b| puts b} }

      runner = Runner.new(args: args, options: options)

      run_sequence = sequence('runner')
      args_list = stub
      runner.expects(:args_list).returns(args_list).in_sequence(run_sequence)
      runner.expects(:run_options).with(args_list).in_sequence(run_sequence)

      runner.run
    end
  end
end
