Rails.application.routes.draw do
  devise_for :users
  resources :users do
    get "/edit_request", to: "bloods#edit_request", as: 'blood_edit_request'
    patch "/update_request", to: "bloods#update_request",  as: 'blood_update_request' 
    get "/edit_donation", to: "bloods#edit_donation", as: 'blood_edit_donation'
    patch "/update_donation", to: "bloods#update_donation",  as: 'blood_update_donation' 
    get "/stocks", to: "users#stocks", as: 'blood_stock'
    get "/user_request", to: "users#user_request", as: 'user_request'
    get "/admin_all_request", to: "users#admin_all_request", as: 'admin_all_request'
    patch "/update_accept_request", to: "allrequests#update_accept_request", as: 'update_accept_request'
    patch "/update_reject_request", to: "allrequests#update_reject_request", as: 'update_reject_request'
    get "/user_profile_page", to: "users#user_profile_page", as: 'user_profile_page'
    resources :bloods
  end

  root "bloods#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
