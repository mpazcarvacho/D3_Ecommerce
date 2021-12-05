Rails.application.routes.draw do
  
  get 'home/index'
  devise_for :users
  devise_for :admins
  
  authenticate :admin do
    resources :products
    resources :categories

  end
  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
