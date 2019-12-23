Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get "home/download/pdf", to: "home#download_pdf"
  get "home/download/csv", to: "home#download_csv"
  get "home/send/email", to: "home#send_email"

  resources :images
  resources :people
end
