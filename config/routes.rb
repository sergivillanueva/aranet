Rails.application.routes.draw do
  root "welcome#index"
  resources "contacts", only: [:create]
end
