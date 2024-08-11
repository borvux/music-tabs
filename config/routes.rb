Rails.application.routes.draw do
  resources :tabs do
    collection do
      get "welcome"
    end
  end

  devise_for :users

  authenticate :user, ->(user) { user.admin? } do
    mount RailsAdmin::Engine, at: "admin", as: "rails_admin"
  end

  root "tabs#welcome"

  # for PWAs
  get "/service-worker.js", to: "service_worker#service_worker"
  get "/manifest.json", to: "service_worker#manifest"
end
