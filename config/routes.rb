Rails.application.routes.draw do
  get 'welcome/index'

  get 'drinks/index'
  
  get 'drinks/search' => 'drinks#search'
  get 'drinks/search/results' => 'drinks#results'
  
  resources :drinks, :liquors, :mixers, :drinkliquors, :drinkmixers
  
  root 'welcome#index'
  
  root :to => 'drinks#index'
  root :to => 'drinks#search'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
