Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

    get 'about', to: 'pages#about'
    get 'submissions', to: 'pages#submissions'
    get 'donations', to: 'pages#donations'
    get 'terms-of-service', to: 'pages#terms_of_service'
    get 'contact', to: 'pages#contact'
    get 'imprint', to: 'pages#imprint'
    get 'privacy-policy', to: 'pages#privacy_policy'
    get 'cms-dashboard', to: 'pages#cms_dashboard'

    get 'archive', to: 'issues#index'

    resources :issues, only: [:new, :show, :edit, :update, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
