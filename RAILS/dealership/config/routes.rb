Rails.application.routes.draw do
    root "cars#index"
    get "cars" => "cars#index"
    get "cars/:id" => "cars#show", as: "car"
    get "cars/:id/edit" => "cars#edit", as: "edit_car"
    patch "cars/:id" => "cars#update"
end
