Blogger::Application.routes.draw do
  resources :articles do
    resources :comments
  
   root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags



  
  
  end
end
