Rails.application.routes.draw do
  resources :articles, only: [:new,:index, :edit, :update, :show]
  post 'articles/create'

  root to: 'pages#home'

  get 'resultat', to: 'pages#resultat', as: :resultat
  get 'ressources', to: 'pages#ressources', as: :ressources
  get 'questionnaire', to: 'pages#questionnaire', as: :questionnaire
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   get '/404', to: "errors#not_found"
    get '/422', to: "errors#unacceptable"
    get '/500', to: "errors#internal_error"
  devise_for :admins
end
