Rails.application.routes.draw do
  authenticate :user, ->(user) { user.admin? } do
    mount RailsAdmin::Engine, at: "admin", as: "rails_admin"
    mount Blazer::Engine, at: "blazer"
  end
end
