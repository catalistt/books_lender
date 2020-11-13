Rails.application.routes.draw do
  resources :books do
    collection do
      get :petition
    end
  end
  
  root 'users#profile'
  resources :users, only: [] do
    #el collection se utiliza para que no se necesite un id en específico
    #básicamente se llaman a "todos" los datos
    collection do
      get :buyed_books
      post :buy_book
      get :buy_book
      get :profile
      put '/:book_id/release', to: 'users#release', as: 'release'
      get :availables
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
