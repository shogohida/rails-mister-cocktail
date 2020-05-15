Rails.application.routes.draw do

  get '/', to: 'cocktails#index'
  # root, serach documentation
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  # to nest doses later
end
