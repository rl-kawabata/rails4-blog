Rails.application.routes.draw do
  resources :articles

  get '/' => 'articles#index', as: 'root'
end
