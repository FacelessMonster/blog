Rails.application.routes.draw do
get 'terms' => 'about#terms'
get 'about' => 'about#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resource :contacts, only: [:new, :create], path_names: {:new => ''}
resources :articles
end
