Rails.application.routes.draw do
  get 'users/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'stories#index'

get 'about' => 'pages#about'
match '/users/:id',     to: 'users#show',   :as => :user,     via: 'get'
match '/users',     to: 'users#index',   :as => :users,     via: 'get'
match '/user/stat',     to: 'users#stat',   :as => :user_stats,     via: 'get'

resources :users
resources :stories

resources :stories do
  resources :comments
end

resource :story do
  # Route GET /user/admin_login
  get 'status_approved', :on => :collection
  get 'status_archive', :on => :collection
  get 'edit', :on => :collection
end

end
