class ValidationsController < ApplicationController

  def show_validation
    continue = params[:continue]
  end

  def show_validation_user_data
    @user = current_user
    @address = Address.new
  end

  def update_user_info
    @user = User.find(params[:id])
  end
end
