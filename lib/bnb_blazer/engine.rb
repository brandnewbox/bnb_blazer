require "blazer"
module BnbBlazer
  class Engine < ::Rails::Engine
    isolate_namespace BnbBlazer
  end
end