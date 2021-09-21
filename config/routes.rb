Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations'
  }, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  ######### ROOT #########
  root to: 'games#index'


  ######## CREATE ########
  get 'games/new'
  post 'games', to: 'games#create'


  ######### READ #########
  get 'games/index'
  get 'games/show'


  ######## UPDATE ########
  get 'games/edit'
  patch 'games/update', to: 'games#update', as: 'games_update'


  ######## DELETE ########
  delete 'games/delete', to: 'games#delete', as: 'games_delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
