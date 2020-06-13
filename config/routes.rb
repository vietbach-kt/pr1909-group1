Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root 'home#index'

    get "/about", to: "home#about"
    resources :courses
    devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
