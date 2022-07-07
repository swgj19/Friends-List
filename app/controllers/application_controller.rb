class ApplicationController < ActionController::Base
  add_flash_types :success, :warning, :danger, :info

  def after_sign_in_path_for(resource)
      stored_location_for(resource) || friends_path
  end

end
