Rails.application.routes.draw do
  resources :posts
  resources :questions
  get 'about' => 'welcome#about'

  get 'welcome/contact'

  root 'welcome#index'
end
