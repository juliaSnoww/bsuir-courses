Rails.application.routes.draw do
  resources :users
  resources :sessions, only: %i[new create destroy]
  resources :adverts,  only: %i[show create destroy]
  resources :comments, only: %i[create destroy]
  root 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end
