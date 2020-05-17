require "test_helper"

module Attractor::Rails
  class ReporterControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get reporter_index_url
      assert_response :success
    end
  end
end
