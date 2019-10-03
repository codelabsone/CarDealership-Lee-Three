Rails.application.routes.draw do
    resources :users
    get 'signup' => 'users#new'
    root "cars#index"
    resources :cars
end
