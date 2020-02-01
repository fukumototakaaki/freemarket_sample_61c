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

    get 'card_inner', to: 'users/registrations#card_inner'
    get 'new_card_inner', to: 'users/registrations#new_card_inner'
    get 'edit_card', to: 'users/registrations#edit_card'
    post 'edit_card', to: 'users/registrations#update_card'

    get 'deliver_address', to: 'users/registrations#edit_deliver_address'
    post 'deliver_address', to: 'users/registrations#update_deliver_address'
    get 'email_password', to: 'users/registrations#edit_email_password'
    post 'email_password', to: 'users/registrations#update_email_password'
    get 'sms_confirmation', to: 'users/registrations#edit_sms_confirmation'
    post 'sms_confirmation', to: 'users/registrations#update_sms_confirmation'

    get 'logout', to: 'users/sessions#logout'
  end
  root to: "items#index"
  resources :items do
    collection do
      get 'listing'
      get 'in_progress'
      get 'completed'
      get 'purchase'
      get 'purchased'
    end
  end
  resources :categorys, only: [:index]
  resources :brands, only: [:index]
  resources :myinfomations, only: [:index] do
    member do
      get 'notification'
      get 'todo'
      get 'like'
      get 'news'
      get 'review'
      get 'great'
      get 'good'
      get 'poor'
      get 'support'
      get 'sales'
      get 'point'
      get 'profile'
      get 'identification'
    end
  end
end
