Rails.application.routes.draw do
  get 'screen/index'
  root "screen#index"
end
