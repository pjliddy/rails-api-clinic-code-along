# frozen_string_literal: true
Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :users, only: [:index, :show]
  resources :examples, except: [:new, :edit]
  resources :patients, except: [:new, :edit]
  # resources :patients, only: [:index, :show, :create, :update, :destroy]
  # ^ `:index` -> same as: get '/patients', to: 'patients#index'
  # ^ `:show` -> same as: get '/patients/:id', to: 'patients#show'
end
