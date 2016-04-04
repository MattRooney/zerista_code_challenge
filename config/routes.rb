Rails.application.routes.draw do
  root to: "sessions#index"
  get "/tuesday", to: "sessions#tuesday"
  get "/wednesday", to: "sessions#wednesday"
end
