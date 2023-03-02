Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  #Validations Routes
  get "validations", to: "validations#show_validation"
  get "validations/user_data", to: "validations#show_validation_user_data"
  patch "validations", to: "update_user_info"

end
