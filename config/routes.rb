EcommerceUcs::Application.routes.draw do
  root to: "items#index"

  namespace :admin do
    root to: "items#index"
    resources :items, except: :show
  end

  resources :items, only: [:index, :show]

  controller :cart do
    get "cart", action: :index, as: :cart
    get "cart/finish", action: :finish, as: :finish_cart
    post "cart/:id", action: :add_item, as: :add_cart_item
    post "cart/:id/remove", action: :remove_item, as: :remove_cart_item
  end
end
