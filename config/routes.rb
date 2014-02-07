Barcard::Application.routes.draw do
  resources :load_funds

  get "users/index"
  get "users/account"
  get "users/payments"
  get "users/check_ins"
  get "users/transactions"
  resources :accounts

  resources :transactions

  resources :check_ins

  resources :payments

  post "/payments/store_credit_card", to: "payments#add_payment_method"

  resources :dashboard

  devise_for :users

  get "pages/index"
  get "pages/how_it_works"
  get "pages/get_rewarded"
  get "pages/support"
  get "pages/about"
  get "pages/fine_print"
  get "pages/for_bars"
  resources :bars

  root :to => 'pages#index'


end
