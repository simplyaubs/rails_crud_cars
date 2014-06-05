Rails.application.routes.draw do

  root 'welcome#index'

  resources :cars

end
