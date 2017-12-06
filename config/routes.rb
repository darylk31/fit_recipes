Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  root "recipes#index"
  resources :recipes do
    member do
      put "like", to: "recipes#upvote"
      put "dislike", to: "recipes#downvote"
    end
  end
end
