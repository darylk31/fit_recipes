Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  resources:recipes
  root "recipes#index"
end
