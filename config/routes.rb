Rails.application.routes.draw do
  resources :articles

  get '/:article_id' => 'front#show', constraints: {post_id: /\d+/}, as: 'front_article'

  # root
  get '/' => 'front#index', as: 'root'

  # 404
  get '*path', controller: 'front_application', action: 'render_404'
end
