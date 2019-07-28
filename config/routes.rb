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
  get 'festivals/name'
  get 'admins/top'
  get 'festivals/staffs'
  get 'festivals/etc'



  namespace :organizations do
    resources :organization_inquirys, only:[:new, :create]
    resources :festivals do
      resources :informations
    end
  end




  namespace :admins do
    get 'top'
    get 'organizations/search'
    get 'festivals/name'
    get 'staffs/search'
    resources :staff_replies, only:[:create]
    resources :staff_inquirys, only:[:index, :show]
    resources :organization_inquirys, only:[:index, :show]
    resources :organization_replies, only:[:create]
    resources :organizations do
      get 'festivals'
    end
    resources :staffs
    resources :festivals do
      resources :matchs
      resources :informations
    end
    resources :presents, only:[:new, :edit, :create, :update]
    resources :orders, only:[:index, :update]
  end


    namespace :staffs do
    resources :staff_inquirys, only:[:new, :create]
    resources :orders, only:[:new, :create]
    get 'information'
  end



  resources :admins do
    resources :organization_replies
    resources :presents
    resources :staff_replies
  end



  resources :staffs do
    resources :staff_inquirys, only:[:new, :create]
    resources :orders
  end



  resources :organizations do
    resources :organization_inquirys, only:[:new, :create]
  end




  resources :festivals, only:[:show, :index] do
    resources :matchs, only:[:index, :create, :destroy]
    resources :informations, only:[:create]
  end

    resources :points




end
