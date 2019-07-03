Rails.application.routes.draw do


	devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

  devise_for :organizations, controllers: {
  sessions:      'organizations/sessions',
  passwords:     'organizations/passwords',
  registrations: 'organizations/registrations'
}


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'homes/top'
  root 'homes#top'


  resources :admins

  resources :users do
    resources :staffs
  end

  resources :organizations
  resources :festivals

end
