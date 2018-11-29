Rails.application.routes.draw do
  get 'welcome/index'
  
  get 'drinks/index'
  get 'drinks/create'
  get 'drinks/result' => 'drinks#result'
  
  resources :drinks do
    resources :mixers, :liquors
  end
  
  root 'welcome#index'
end
