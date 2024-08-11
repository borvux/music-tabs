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

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"

  root "tabs#welcome"
end
