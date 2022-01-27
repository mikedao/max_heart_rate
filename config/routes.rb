Rails.application.routes.draw do  
  get '/', to: 'hr#new'  
  post '/', to: 'hr#show'
end
