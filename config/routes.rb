Rails.application.routes.draw do
  get 'users/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'stories#index'

get 'about' => 'pages#about'
match '/users/:id',     to: 'users#show',   :as => :user,     via: 'get'

resources :users, :only =>[:show]
resources :stories

resources :stories do
  resources :comments 
end

end
