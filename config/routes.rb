Rails.application.routes.draw do
  root to: "home#index"
  get 'home/index'
  get 'bsimm/practice/:id', to: 'bsimm#practice', as: 'practice'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
end
