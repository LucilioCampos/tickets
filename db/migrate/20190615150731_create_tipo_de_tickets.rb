class CreateTipoDeTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_de_tickets do |t|
      t.integer :tipoDeTicketKey
      t.string :descricao
      t.string :cor

      t.timestamps
    end
  end
end
