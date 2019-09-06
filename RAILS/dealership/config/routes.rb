Rails.application.routes.draw do
    root "car#index"
    get "car" => "car#index"
    get "car/:id" => "car#show", as: "vehicle"
end
