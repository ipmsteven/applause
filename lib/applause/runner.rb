require 'applause/parser'

module Applause
  class Runner
    attr_reader :args, :options, :parser

    def initialize(args:, options:, parser: Parser.new)
      @args    = args
      @options = options
      @parser  = parser
    end

    def run
      run_options(args_list)
    end

    private

    def args_list
      parser.parse(args, options.keys)
    end

    def run_options(args_list)
      args_list.each &run_block
    end

    def run_block
      lambda do |item|
        head, *tail = item
        options[head].call(*tail)
      end
    end
  end
end
