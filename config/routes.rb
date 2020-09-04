Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  authenticated :user do
    root to: "projects#index", as: :authenticated_root
    resources :projects
    resources :supporters
  end

  unauthenticated :user do
    root to: "pages#index"
    resources :pages, only: [:index, :show]
  end
end
