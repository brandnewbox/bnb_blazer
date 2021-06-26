module BNBBlazer
  class Blazer::BaseController < ApplicationController
    layout "bnb_blazer/application"
    append_view_path(["views/blazer", "views/bnb_blazer", "views/blazer"])
  end
end