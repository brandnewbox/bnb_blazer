load Blazer::Engine.root.join("app/contollers/blazer/base_controller.rb")
Blazer::BaseController.class_eval do
  puts "*"*88
  layout "bnb_blazer/application"
  append_view_path(["views/blazer", "views/bnb_blazer", "views/blazer"])
end