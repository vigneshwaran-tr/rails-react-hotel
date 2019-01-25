Rails.application.routes.draw do
  resources :search
  
  root 'search#index'
  get '/enquiry'=>'search#enquiry'
  get '/enquiryadd'=>'search#add'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
