require 'test_helper'

class ApplauseTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Applause::VERSION
  end

  def test_run
    a, b = mock, mock
    args    = ['-a', 1, '-b', 2]
    options = {'-a' => a, '-b' => b}
    a.expects(:call).with(1)
    b.expects(:call).with(2)

    Applause.run args, options
  end

  def test_run__in_sequence
    run_sequence = sequence('run')
    args = ['1','2','3']
    options = mock
    runner_mock = mock

    Applause::Runner.expects(:new).with(args: args, options: options).returns(runner_mock).in_sequence(run_sequence)
    runner_mock.expects(:run).in_sequence(run_sequence)

    Applause.run args, options
  end
end
