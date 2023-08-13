module APISecurity
  extend ActiveSupport::Concern

  included { skip_forgery_protection }
end
