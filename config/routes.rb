Rails.application.routes.draw do
  devise_for :users
  resources :users do
    get "/edit_request", to: "bloods#edit_request", as: 'blood_edit_request'
    patch "/update_request", to: "bloods#update_request",  as: 'blood_update_request' 
    get "/edit_donation", to: "bloods#edit_donation", as: 'blood_edit_donation'
    patch "/update_donation", to: "bloods#update_donation",  as: 'blood_update_donation' 
    get "/stocks", to: "users#stocks", as: 'blood_stock'
    resources :bloods
  end

  root "bloods#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
