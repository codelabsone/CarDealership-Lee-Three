Rails.application.routes.draw do
    root "car#index"
    get "car" => "car#index"
    get "car/:id" => "car#show", as: "vehicle"
    get "car/:id/edit" => "car#edit", as: "edit_vehicle"
end
