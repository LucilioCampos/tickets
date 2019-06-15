class Ticket < ApplicationRecord
  belongs_to :categoriaKey
  belongs_to :tipoDeTicketKey
  belongs_to :kanbanStatusKey
  belongs_to :tipoDePrioridadeKey
  belongs_to :projeto
  belongs_to :responsavel
  belongs_to :atuacoes
  belongs_to :user
end
