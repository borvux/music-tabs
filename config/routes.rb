Rails.application.routes.draw do
  draw :admin
  draw :service_worker

  devise_for :users
  
  resources :tabs do
    collection do
      get "welcome"
    end
  end

  root "tabs#welcome"
end
