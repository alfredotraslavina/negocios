Rails.application.routes.draw do
	
	root 'invens#index'
	get 'invens/reporte'

  resources :invens
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
