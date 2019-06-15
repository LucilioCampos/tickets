Rails.application.routes.draw do
  resources :tickets
  resources :data_limites
  resources :atuacaos
  resources :resposavels
  resources :projetos
  resources :especie_de_tickets
  resources :tipo_de_prioridades
  resources :kanban_statuses
  resources :tipo_de_tickets
  resources :categoria
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
