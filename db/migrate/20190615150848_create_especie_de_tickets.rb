class CreateEspecieDeTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :especie_de_tickets do |t|
      t.integer :especieDeTicketKey
      t.string :descricao
      t.string :slug

      t.timestamps
    end
  end
end
