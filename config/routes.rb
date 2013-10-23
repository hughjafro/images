Sprint1::Application.routes.draw do
  root to: 'images#home'

  get 'images' => 'images#index'
  get 'images/new' => 'images#new' #shows form to add newbies MUST BE before SHOW
   # :id allows you access to all the images
  get 'images/:id' => 'images#show'

  get 'images/edit/:id' => 'images#edit' #shows form

  post 'images' => 'images#create' #creating new Team
  delete 'images/:id' => 'images#destroy'
 


end
