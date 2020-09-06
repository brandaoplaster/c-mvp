Rails.application.routes.draw do

  root to: "pages#index", as: 'pages'
  get :search, to: "search#index"

  resources :pages, only: [:index, :show]
  resources :projects
  resources :supporters

  devise_for :users, :controllers => { registrations: 'registrations' }

end
