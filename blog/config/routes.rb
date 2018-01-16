Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments, :ratings
  end

  root 'welcome#index'
end
