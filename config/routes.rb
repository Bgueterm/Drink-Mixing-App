Rails.application.routes.draw do
  get 'welcome/index'
<<<<<<< HEAD
  
  get 'drinks/index'
  get 'drinks/create'
  get 'drinks/result' => 'drinks#result'
=======
  # get 'drinks/index'
  
  get 'drinks/search', to: 'drinks#search', as: :search
  # get 'drinks/search/results' => 'drinks#results'

>>>>>>> master
  
  resources :drinks do
    resources :mixers, :liquors
  end
  
  root 'welcome#index'
<<<<<<< HEAD
=======
  
  # root :to => 'drinks#index'
  # root :to => 'drinks#search'


>>>>>>> master
end
