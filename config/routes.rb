Smartvalue::Application.routes.draw do
  resources :companies

  root 'companies#index'
end
