Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end

Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top
    end
  end
end
