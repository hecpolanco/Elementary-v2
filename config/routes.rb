Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'home', to: 'home#show'
  get 'me', to: 'me#show', as: 'me'

  get	'/watsons/new',	 to: 'watsons#new', as: 'new_watsons'
  get '/watsons', to: 'watsons#index', as: 'watsons'
  post '/watsons',	to: 'watsons#create'
  get	'/watsons/:id', to: 'watsons#show', as: 'watson'
  get '/watsons/:id/edit', to: 'watsons#edit', as: 'edit_watson'
  patch '/watsons/:id', to: 'watsons#update'
end
