Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  authenticated :user do
    root to: "dashboard#index", as: :authenticated_root
  end

  unauthenticated :user do
    root to: "pages#index"
    resources :pages, only: [:index, :show]
  end
end
