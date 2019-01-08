Rails.application.routes.draw do
  root 'pals#input'

  get 'pals/input'
  get 'pals/output'
  get 'pals/all'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
