Rails.application.routes.draw do

scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
  resources :questions, :answers, :users, :choices, :match_requests

  devise_for :users

  root to: "home#index", as: :localized_root

end

root to: redirect("/#{I18n.default_locale}", status: 302)

end
