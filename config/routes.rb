Rubytaf::Application.routes.draw do
  root to: "jobs#index"
  
  resources :jobs do
    member do
      get "preview"
      post "publish"
    end
  end
end
