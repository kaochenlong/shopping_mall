Rails.application.routes.draw do
  resources :products

  resource :cart, only:[:show, :destroy] do
    collection do
      post :add, path:'add/:id'
    end
  end
end
