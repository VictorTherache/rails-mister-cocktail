Rails.application.routes.draw do
  get 'cocktails/resources'
  resources :cocktails do 
    resources :doses, only: [:new, :create, :destroy]
  end
  resources :doses,  only: [ :show, :edit, :update, :destroy ]
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
