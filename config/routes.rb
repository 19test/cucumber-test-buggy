Strawberries::Application.routes.draw do
  resources :strawberries
  root :to => "strawberries#index"
end
