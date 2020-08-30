Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

    get 'about', to: 'pages#about'
    get 'submissions', to: 'pages#submissions'
    get 'donations', to: 'pages#donations'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
