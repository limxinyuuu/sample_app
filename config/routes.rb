Rails.application.routes.draw do
  get 'users/new'

  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/rsvp'

  get 'static_pages/blog'

  root 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/rsvp', to: 'static_pages#rsvp'

  get '/blog', to: 'static_pages#blog'

  get '/signup', to: 'users#new'

  resources :users

  resources :microposts,          only: [:create, :destroy]

end
