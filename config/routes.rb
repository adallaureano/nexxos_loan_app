Rails.application.routes.draw do
  resources :requesters do 
    resources :credit_requests
  end

root "requesters#index"

end
