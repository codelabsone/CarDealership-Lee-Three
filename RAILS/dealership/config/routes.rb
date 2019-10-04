Rails.application.routes.draw do
    resources :users
    resource :session
    get 'signup' => 'users#new'
    root "cars#index"
    resources :cars
end
