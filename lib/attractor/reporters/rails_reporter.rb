require "attractor/reporters/base_reporter"

module Attractor
  class RailsReporter < BaseReporter
    def values(type: "rb")
      @values = @calculators[type].calculate
      @values
    rescue NoMethodError => e
      puts "No calculator for type #{type}"
    end
  end
end
