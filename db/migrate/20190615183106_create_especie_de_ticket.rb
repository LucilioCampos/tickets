class CreateEspecieDeTicket < ActiveRecord::Migration[5.2]
  def change
    create_table :especieDeTicket do |t|
      t.integer :especieDeTicketKey
      t.string :descricao
      t.string :slug

      t.timestamps
    end
  end
end
