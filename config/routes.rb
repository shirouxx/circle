Rails.application.routes.draw do
  root 'home#top'
  get 'bukatus/index'
  get 'bukatus/show'
  post 'home/show'
  get 'home/index'
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
