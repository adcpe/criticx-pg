Rails.application.routes.draw do
  get 'games', to: 'games#index'
  get 'companies', to: 'companies#index'
end
