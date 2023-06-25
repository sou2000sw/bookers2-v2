Rails.application.routes.draw do
  resources :books, only: [:new, :index, :show]
  devise_for :users
  root to: "homes#top"
  get "/homes/about",as: "about"
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  post "books" => "books#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
