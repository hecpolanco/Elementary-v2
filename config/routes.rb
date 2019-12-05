Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get	'/watsons/new',	 to: 'watsons#new', as: 'new_watsons'
  get '/watsons', to: 'watsons#index', as: 'watsons'
  post '/watsons',	to: 'watsons#create'
  get	'/watsons/:id', to: 'watsons#show', as: 'watson'
  get '/watsons/:id/edit', to: 'watsons#edit', as: 'edit_watson'
  patch '/watsons/:id', to: 'watsons#update'
end
