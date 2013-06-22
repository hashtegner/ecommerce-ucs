EcommerceUcs::Application.routes.draw do
  root to: "items#index"

  namespace :admin do
    root to: "items#index"
    resources :items
  end

  resources :items, only: :index

  controller :cart do
    get "cart", action: :index, as: :cart
    get "cart/:id", action: :add_item, as: :add_cart_item
    get "cart/:id/remove", action: :remove_item, as: :remove_cart_item
  end
end
