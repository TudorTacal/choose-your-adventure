Rails.application.routes.draw do

  devise_for :users, controllers: {
         sessions: 'users/sessions',
         registrations: 'users/registrations'
       }

  root 'game#index'

  resources :game, only:[:index, :new, :show] do
    resources :adventure, only:[:index]
  end
  resources :story, only:[:show]

end
