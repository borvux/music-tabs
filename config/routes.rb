Rails.application.routes.draw do
  draw :admin

  devise_for :users
  
  resources :tabs do
    collection do
      get "welcome"
    end
  end

  root "tabs#welcome"

  get "/service-worker.js", to: "service_worker#service_worker"
  get "/manifest.json", to: "service_worker#manifest"
end
