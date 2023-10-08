Rails.application.routes.draw do
  resources :sessions
  resources :order_items
  resources :order_item_statuses
  resources :bookings
  resources :orders
  resources :bills
  resources :booking_statuses
  resources :tables
  resources :table_statuses
  resources :members
  resources :staffs
  resources :bill_statuses
  resources :payment_types
  resources :products
  resources :product_categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
