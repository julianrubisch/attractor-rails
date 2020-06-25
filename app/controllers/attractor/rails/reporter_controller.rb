require_dependency "attractor/rails/application_controller"
require "attractor"
require "attractor/reporters/rails_reporter"

module Attractor::Rails
  class ReporterController < ApplicationController
    layout false

    before_action :load_reporter

    def index
      @types = @reporter.types
    end

    def file_prefix
      render json: {file_prefix: @reporter.file_prefix}
    end

    def values
      type = params[:type] || "rb"
      render json: @reporter.values(type: type).map(&:to_h)
    end

    def suggestions
      threshold = params[:t] || 95
      type = params[:type] || "rb"
      render json: @reporter.suggestions(quantile: threshold, type: type).map(&:to_h)
    end

    private

    def load_reporter
      calculators = Attractor.calculators_for_type(nil,
                                                   start_ago: Attractor::Rails.start_ago,
                                                   minimum_churn_count: Attractor::Rails.minimum_churn_count,
                                                   file_prefix: Attractor::Rails.file_prefix)

      @reporter = Attractor::RailsReporter.new(calculators: calculators,
                                               file_prefix: Attractor::Rails.file_prefix)
      @reporter.report
    end
  end
end
