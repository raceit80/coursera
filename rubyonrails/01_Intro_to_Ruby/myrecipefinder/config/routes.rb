Rails.application.routes.draw do


    get 'recipes_controller/index' => "recipes_controller#index"

  

    root 'recipes_controller#index'
end
