require "blazer"
module BnbBlazer
  class << self
    attr_accessor :mapbox_access_token
  end
  class Engine < ::Rails::Engine
    isolate_namespace BnbBlazer

    initializer "blazer" do |app|
      app.config.assets.precompile << "bnb_blazer/application.css"
      app.config.assets.precompile << "bnb_blazer/bnb_intel_logo.png"
      app.config.assets.precompile << "bnb_blazer/bnb_intel_logo_alt.png"
    end
  end
  def self.maps?
    mapbox_access_token.present? && mapbox_access_token.start_with?("pk.")
  end
end