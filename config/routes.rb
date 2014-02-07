Lesson::Application.routes.draw do
  root "pages#home"
  get "home", to: "pages#home", as: "home"


  devise_for :users

  namespace :admin do
    root "base#index"
    get "info", to: "base#info", as: "info"
    resources :users
  end

end
