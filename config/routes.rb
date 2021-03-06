Rails.application.routes.draw do

    resources :users
    root "static_pages#index"
    get    'about'   => 'static_pages#about'
    get    'contact' => 'static_pages#contact'
    get    'signup'  => 'users#new'
    get    'login'   => 'sessions#new'
    post   'login'   => 'sessions#create'
    delete 'logout'  => 'sessions#destroy'
    get     'myprofile' => 'users#show'

    resources :articles do
        resources :comments
    end

    resources :tags
end
