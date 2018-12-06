Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :tasks
      resources :task_lists
      resources :users, only: %i[index create current_user]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

end
