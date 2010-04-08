Todo::Application.routes.draw do
  resources :lists do
    resources :items
  end

  match '/' => 'lists#index'
end
