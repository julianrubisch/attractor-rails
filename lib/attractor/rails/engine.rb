module Attractor
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Attractor::Rails
    end
  end
end
