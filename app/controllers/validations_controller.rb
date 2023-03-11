class ValidationsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:update_user_info, :update_address, :update_emergency_contact]
  def show_validation
    continue = params[:continue]
  end

  def show_validation_user_data
    @user = current_user
    if current_user.address.nil?
      @address = Address.new
    else
      @address = @user.address
    end
    if current_user.emergency_contact.nil?
      @emergency_contact = EmergencyContact.new
    else
      @emergency_contact = current_user.emergency_contact
    end
  end

  def update_user_info
    @user = current_user
    @user.update(user_params)
    respond_to do |format|
      format.html
      format.text { render partial: "blocks/name_block_validation", locals: {user: @user}, formats: [:html] }
    end
  end

  def update_address
    if current_user.address.nil?
      address = Address.new
      address.user = current_user
      address.save
    end
    current_user.address.update(address_params)
    respond_to do |format|
      format.html
      format.text { render partial: "blocks/address_validation", locals: {user: current_user}, formats: [:html] }
    end
  end

  def update_emergency_contact
    if current_user.emergency_contact.nil?
      emergency_contact = EmergencyContact.new
      emergency_contact.user = current_user
      emergency_contact.save
    end
    current_user.emergency_contact.update(emergency_contact_params)
    respond_to do |format|
      format.html
      format.text { render partial: "blocks/emergency_validation", locals: {user: current_user}, formats: [:html] }
    end
  end

  def get_validations_name_form
    respond_to do |format|
      format.html
      format.text { render partial: "mobile_forms/name_validation_form", locals: {user: current_user}, formats: [:html] }
    end
  end

  def get_validations_address_form
    respond_to do |format|
      format.html
      format.text { render partial: "mobile_forms/address_form", locals: {address: current_user.address}, formats: [:html] }
    end
  end

  def get_validations_emergency_contact
    respond_to do |format|
      format.html
      format.text { render partial: "mobile_forms/emergency_contact_form", locals: {emergency_contact: current_user.emergency_contact}, formats: [:html] }
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_names, :phone_number, :date_of_birth, :gender, :nationality)
  end

  def address_params
    params.require(:address).permit(:street, :state, :city, :zip_code, :country, :neighborhood)
  end

  def emergency_contact_params
    params.require(:emergency_contact).permit(:first_name, :last_name, :phone_number, :relationship)
  end
end
