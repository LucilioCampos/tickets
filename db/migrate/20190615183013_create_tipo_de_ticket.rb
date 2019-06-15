class CreateTipoDeTicket < ActiveRecord::Migration[5.2]
  def change
    create_table :tipoDeTicket do |t|
      t.integer :tipoDeTicketKey
      t.string :descricao
      t.string :cor

      t.timestamps
    end
  end
end
