Rails.application.routes.draw do
  root 'offices#index', as: 'home'
  resources :offices do
    resources :tools
    resources :employees
  end

end
