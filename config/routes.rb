Rails.application.routes.draw do

  resources :dog_houses, only: [:show] do 
    # nested resources => child
    resources :reviews, only: [:index, :show]
  end

  resources :reviews, only: [:show, :index, :create]
  
  
  # # gets all reviews for a specific dog_house
  # get '/dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index'

  # # get a specific review for a specific dog_house
  # get '/dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#review'

end
