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
    get 'all-contributions', to: 'pages#all_contributions'
    get 'unapproved-contributions', to: 'pages#unapproved_contributions'

    get 'archive', to: 'issues#index'
    get 'issues/1', to: 'issues#first'
    get 'issues/2', to: 'issues#second'
    get 'issues/3', to: 'issues#third'

    resources :issues, only: [:new, :edit, :update, :create, :destroy] do
      resources :contributions, only: [:new, :create, :show, :update, :destroy, :edit] do
      end
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
