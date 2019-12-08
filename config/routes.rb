Rails.application.routes.draw do
  devise_for :accounts

  get 'menus', to: "menus#index"
  
  post 'menus', to: "menus#index"
  post 'menus', to: "menus#find"

  get 'menus/add'
  post 'menus/add'
  get 'menus/:id', to: "menus#show"
  get 'menus/edit/:id', to:"menus#edit"
  patch 'menus/edit/:id', to:"menus#edit"
  delete "menus/:id", to: "menus#delete"

  get 'menu_cotegories', to: "menu_cotegories#index"
  post 'menu_cotegories', to: "menu_cotegories#index"
  get 'menu_cotegories/add'
  post 'menu_cotegories/add'
  get 'menu_cotegories/edit/:id', to:"menu_cotegories#edit"
  patch 'menu_cotegories/edit/:id', to:"menu_cotegories#edit"
  delete "menu_cotegories/:id", to: "menu_cotegories#delete"
  get "menus/login_check"

  root to: "menus#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
