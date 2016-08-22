Rails.application.routes.draw do
  get 'blogposts/index'

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

  resources :users,               only: [:create, :index]

  resources :microposts,          only: [:create, :destroy]

  resources :blogposts

end
