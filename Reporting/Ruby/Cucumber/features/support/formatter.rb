require_relative '../lib/utils/perfecto-utils'
require 'cucumber'

module Formatter

  class StepsFormatter

    def initialize(step_mother, io, options)
      # Don't care - formatter requirement
    end

    # before_step listener
    #
    # before each step logs the step within reporting client.
    def before_step step
      Utils::Reporting.logStep step.name
    end

  end

end