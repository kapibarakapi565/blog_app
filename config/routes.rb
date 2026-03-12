Rails.application.routes.draw do
  
  # 一覧ページ
  get 'posts', to:'posts#index'

  # 新規投稿ページ
  get 'posts/new', to:'posts#new'

  get "up" => "rails/health#show", as: :rails_health_check

end
