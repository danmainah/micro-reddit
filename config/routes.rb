Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :links do
  member do
    put "like", to: "links#upvote"
    put "dislike", to: "links#downvote"
   end
   resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'links#index'
  root :to => 'links#index' 
end
