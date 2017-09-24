Rails.application.routes.draw do
  get 'sessions/create'

  mount RailsAdmin::Engine => '/sarfraz', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index'=>"posts#index"
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'posts#land'

   resources :posts do
    resources :fors
    resources :againsts
  end

  
end
