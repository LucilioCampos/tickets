class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :ticketKey
      t.integer :quantidadeDeVinculado
      t.string :titulo
      t.references :categoria, foreign_key: true
      t.references :tipo_de_ticket, foreign_key: true
      t.references :kanban_status, foreign_key: true
      t.references :tipo_de_prioridade, foreign_key: true
      t.string :especie_de_ticket, foreign_key: true
      t.string :references
      t.boolean :alvoDeSpam
      t.string :valorDeNegocio
      t.string :integer
      t.integer :esforco
      t.references :projeto, foreign_key: true
      t.references :resposavel, foreign_key: true
      t.references :atuacao, foreign_key: true
      t.string :dataLimite
      t.string :references
      t.string :url
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
