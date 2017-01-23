Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"
  resources :users, :posts
  get "pages/inspiration" =>"pages#inspiration"
  # get "/forum" =>"pages#forum"

end
