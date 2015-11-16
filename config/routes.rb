Rails.application.routes.draw do
  resources :activity_items, only: [:index]
  resources :reviews, except: [:new, :edit]
  resources :recipes, except: [:new, :edit]
  resources :posts, except: [:new, :edit]
end
