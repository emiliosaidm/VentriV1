Rails.application.routes.draw do
  resources :cars do
    resources :rentals
  end
  devise_for :users, controllers: {registrations: :registrations}
  root to: "pages#home"
  #Validations Routes
  get "validations", to: "validations#show_validation", as: "validations"
  get "validations/user_data", to: "validations#show_validation_user_data", as: "user_validate_data"
  patch "validations", to: "validations#update_user_info", as: "update_user_info"
end
