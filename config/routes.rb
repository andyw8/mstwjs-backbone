MstwjsBackbone::Application.routes.draw do
  root to: "trips#index"

  resources :trips
end
