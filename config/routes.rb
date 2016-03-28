Rails.application.routes.draw do
  namespace :v1 do
    resources :activity_items, only: [:index]
    resources :reviews, except: [:new, :edit]
    resources :recipes, except: [:new, :edit]
    resources :posts, except: [:new, :edit]
  end
end
