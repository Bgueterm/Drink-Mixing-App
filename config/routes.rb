Rails.application.routes.draw do
  get 'welcome/index'
  
  get 'drinks/index'
  
  resources :drinks
  
  root 'welcome#index'
  
  root :to => 'drinks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
