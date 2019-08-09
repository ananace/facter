module Facter
  module Linux
    class OsRelease
      FACT_NAME = 'os.release'.freeze
      @aliases =[]

      def initialize(*args)
        @args = args
        puts 'Dispatching to resolve: ' + args.inspect
      end

      def call_the_resolver!
        fact = OsResolver.resolve(:release)
        { FACT_NAME => fact }
      end
    end
  end
end