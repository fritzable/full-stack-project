# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Doctor resources routes
  resources :doctors, except: %i[new edit]

  # Recipe resources routes
  resources :recipes, except: %i[new edit]

  # Meal routes
  resources :meals, except: %i[new edit]

  # Books resources routes
  resources :books, except: %i[new edit]
  # get '/books' => 'books#index'
  # get '/books/:id' => 'books#show'
  # post '/books' => 'books#create'
  # patch '/books/:id' => 'books#update'
  # delete '/books/:id' => 'books#destroy'

  # Patients resource routes
  resources :patients, except: %i[new edit]
  # get '/patients' => 'patients#index'
  # get '/patients/:id' => 'patients#show'
  # post '/patients' => 'patients#create'
  # patch '/patients/:id' => 'patients#update'
  # delete '/patients/:id' => 'patients#destroy'

  # Appointment route
  resources :appointments, except: %i[new edit]

  # Ingredients resource routes
  resources :ingredients, except: %i[new edit]
  # get '/ingredients' => 'ingredients#index'
  # get '/ingredients/:id' => 'ingredients#show'
  # post '/ingredients' => 'ingredients#create'
  # patch '/ingredients/:id' => 'ingredients#update'
  # delete '/ingredients/:id' => 'ingredients#destroy'

end
