Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'cellphones', to: 'users/registrations#new_cellphone'
    post 'cellphones', to: 'users/registrations#create_cellphone'
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get 'cards', to: 'users/registrations#new_card'
    post 'cards', to: 'users/registrations#create_card'
  end
  root to: "items#index"
  resources :items
  resources :credit_cards, only: [:index,:new,:show]
end

