class RegistrationsController < Devise::RegistrationsController

  private

  def after_sign_in_path_for(resource_or_scope)
    if params[:continue].nil?
      root_path
    else
      request.base_url + params[:continue]
    end
  end
end
