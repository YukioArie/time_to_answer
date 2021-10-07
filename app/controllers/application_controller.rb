class ApplicationController < ActionController::Base
  layout :layout_by_resourcce

  private

  def layout_by_resourcce
    if devise_controller? && resource_class == Admin
      'admin_devise'
    else
      'application'
    end
  end
end
