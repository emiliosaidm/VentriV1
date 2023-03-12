Rails.application.routes.draw do
  resources :cars
  devise_for :users, controllers: {registrations: :registrations}
  root to: "pages#home"
  #Validations Routes
  get "validations", to: "validations#show_validation", as: "validations"
  get "validations/user_data", to: "validations#show_validation_user_data", as: "user_validate_data"
  patch "validations/update/user", to: "validations#update_user_info", as: "update_user_info"
  patch "validations/update/address", to: "validations#update_address"
  patch "validations/update/emergency_contact", to: "validations#update_emergency_contact"
  get "validations/get_name_validation_form", to: "validations#get_validations_name_form"
  get "validations/get_address_validation_form", to: "validations#get_validations_address_form"
  get "validations/get_emergency_contact_form", to: "validations#get_validations_emergency_contact"
  get "validations/get_id_form", to: "validations#get_id_form"
end
