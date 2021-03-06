Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  resources :products, only: [:index, :show]
  resources :line_items, only: :create
end
