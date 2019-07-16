Rails.application.routes.draw do


  devise_for :staffs, controllers:{
  sessions:      'staffs/sessions',
  passwords:     'staffs/passwords',
  registrations: 'staffs/registrations'
}

	devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}


  devise_for :organizations, controllers: {
  sessions:      'organizations/sessions',
  passwords:     'organizations/passwords',
  registrations: 'organizations/registrations'
}


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'homes/top'
  root 'homes#top'
  get 'festivals/area'
  get 'festivals/date'
  get 'festivals/etc'
  get 'admins/top'


  get 'organizations/show'
  get 'organizations/index'

  namespace :organizations do
    resources :festivals
  end
  namespace :admins do
    resources :presents
    get 'top'
  end
  namespace :admins do
    resources :organizations
    resources :staffs
    resources :festivals
  end


    namespace :staffs do
    resources :staff_inquirys
  end

  resources :staff_inquirys



  resources :admins
  resources :presents


  resources :staffs




  resources :organizations do
    resources :festivals
  end



  resources :festivals


  resources :matchs
  resources :points


end
