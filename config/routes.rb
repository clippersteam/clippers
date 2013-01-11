Clippers::Application.routes.draw do
  root to: 'home#index'
  
  match '/subscribe', to: 'home#subscribe', as: 'subscribe'
end
