Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"

  get "shop", to: "shop#index"
  get "shop/:category", to: "shop#index", as: :shop_category
  get "products/:slug", to: "shop#show", as: :product

  get "about", to: "pages#about"
  get "vision", to: "pages#vision"
  get "innovation", to: "pages#innovation"
  get "support", to: "pages#support"
  get "achievements", to: "pages#achievements"
  get "media", to: "pages#media"
  get "careers", to: "pages#careers"

  get "dealers", to: "pages#dealers"
  post "dealers", to: "pages#create_dealer"

  get "inquiry", to: "pages#inquiry"
  post "inquiry", to: "pages#create_inquiry"

  get "complaint", to: "pages#complaint"
  post "complaint", to: "pages#create_complaint"

  get "contact", to: "contact#show"
  post "contact", to: "contact#create"

  get "cart", to: "cart#show"
  get "checkout", to: "checkout#show"
  post "checkout", to: "checkout#create"
end
