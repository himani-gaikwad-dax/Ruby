Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   root 'items#show'
  # # Defines the root path route ("/")
  # get 'about', to'pages#about'
  resources :items
end
