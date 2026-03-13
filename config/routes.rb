Rails.application.routes.draw do
  
  resources :posts, only: [:index, :new, :create, :destroy]

  get "up" => "rails/health#show", as: :rails_health_check

end
