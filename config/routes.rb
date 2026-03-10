Rails.application.routes.draw do
  get 'posts', to:'posts#index'
  get "up" => "rails/health#show", as: :rails_health_check

end
