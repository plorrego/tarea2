Rails.application.routes.draw do
  resources :comments
  resources :news

  put "/news/:id", to: "news#update"
  patch "/news/:id", to: "news#update"

  get "/news/:id/comments", to: "news#comments"
  post "news/:id/comments", to: "comments#create"
  get "/news/:news_id/comments/:id", to: "comments#show"
  delete "/news/:news_id/comments/:id", to: "comments#destroy"
  put "/news/:news_id/comments/:id", to: "comments#update"
  patch "/news/:news_id/comments/:id", to: "comments#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
