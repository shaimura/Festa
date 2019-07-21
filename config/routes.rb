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
  get 'festivals/staffs'



  namespace :organizations do
    resources :organization_inquirys
    resources :festivals do
      resources :informations
    end
  end




  namespace :admins do
    resources :staff_replies
    resources :staff_inquirys
    resources :organization_inquirys
    resources :organization_replies
    resources :organizations do
      get 'festivals'
    end
    resources :staffs
    resources :festivals
    resources :presents
    resources :orders
    get 'top'
  end


    namespace :staffs do
    resources :staff_inquirys
    resources :orders
    get 'information'
  end



  resources :admins do
    resources :organization_replies
    resources :presents
    resources :staff_replies
  end



  resources :staffs do
    resources :staff_inquirys
    resources :points
    resources :orders
  end








  resources :organizations do
    resources :organization_inquirys
  end




  resources :festivals do
    resources :matchs
    resources :informations
  end



end
