Rails.application.routes.draw do
  resources :accounts
  get 'admin/dashboard'

  get 'admin/stats'

  get 'admin/financials'

  get 'admin/settings'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :new, :create]
  get 'articles/:id', to: 'articles#show', as: 'article'
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'
end
