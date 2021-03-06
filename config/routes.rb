Rails.application.routes.draw do
  resources :contacts
  resources :aankoopfacturens
  resources :invoices
  root "nl#home"
  get 'watdoenwe' => 'nl/diensten'
  get 'nl/digitalconsulting'
  get 'nl/sectoren'
  get 'nl/overons'
  get 'static/home'
  get 'static/legal'
  get 'static/privacy'
  get 'static/terms'
  get 'nl/hrconsulting'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
