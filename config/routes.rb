Rails.application.routes.draw do
  root to: 'pages#home'
  
  get 'resultat', to: 'pages#resultat', as: :resultat
  get 'ressources', to: 'pages#ressources', as: :ressources
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
