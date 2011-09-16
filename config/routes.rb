MyRubyFrog::Application.routes.draw do
  root to: "jobs#index"
  
  resources :jobs do
    member do
      get "preview"
      post "publish"
      get "confirm_publication"
    end
    
    collection do
      get 'search'
    end
  end
end
