Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :tasks
      resources :users
      resources :slashed_tasks
    end
  end

end
