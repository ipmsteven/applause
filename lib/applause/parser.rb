module Applause
  class Parser
    def parse(args, flags)
      args.slice_before do |n|
        flags.include? n
      end
    end
  end
end
