Rails.application.routes.draw do
  # get 'cocktails/index'
  # get 'cocktails/new'
  # get 'cocktails/show'
  resources :cocktails, only: [:index, :show, :new, :create]
  # to nest doses later
end
