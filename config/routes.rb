Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/sarfraz', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index'=>"posts#index"

   resources :posts do
    resources :fors
    resources :againsts
  end

  
end
