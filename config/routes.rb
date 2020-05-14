Rails.application.routes.draw do

  get 'doses/new'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  # to nest doses later
end
