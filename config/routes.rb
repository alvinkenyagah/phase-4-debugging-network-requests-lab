Rails.application.routes.draw do
  resources :toys, only: [:index, :create, :update, :destroy] #ADD DESTROY ROUTE: ActionController::RoutingError (No route matches [DELETE] "/toys/11"):
end
