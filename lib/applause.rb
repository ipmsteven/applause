require 'applause/version'
require 'applause/runner'

module Applause
  def self.run(args, options)
    Runner.new(args: args.dup, options: options).run
  end
end
