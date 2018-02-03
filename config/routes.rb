Rails.application.routes.draw do
  get 'home/index'
  root to: "home#index"

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
end
