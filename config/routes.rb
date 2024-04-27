Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "/blog_posts/new", to: "blog_posts#new", as: :new_post
  #get "/blog_posts/:id", to: "blog_posts#show", as: :post
  #get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_new_post
  #post "/blog_posts", to: "blog_posts#create", as: :blog_posts
  
  resources :blog_posts
  # Defines the root path route ("/")
   root "blog_posts#index"
end
