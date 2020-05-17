require "attractor/rails/engine"

module Attractor
  module Rails
    mattr_writer :minimum_churn_count, :file_prefix, :start_ago

    def self.minimum_churn_count
      @@minimum_churn_count || 3
    end

    def self.file_prefix
      @@file_prefix || ""
    end

    def self.start_ago
      @@start_ago || "5y"
    end
  end
end
