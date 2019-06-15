class CreateTicket < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket do |t|
      t.integer :ticketKey
      t.integer :quantidadeDeVinculados
      t.string :titulo
      t.references :categoria, foreign_key: true
      t.references :tipoDeTicket, foreign_key: true
      t.references :kanbanStatus, foreign_key: true
      t.references :tipoDePrioridade, foreign_key: true
      t.string :especieDeTicket
      t.string :references
      t.boolean :alvoDeSpam
      t.string :valorDeNegocio
      t.string :integer
      t.integer :esforco
      t.references :projeto, foreign_key: true
      t.references :responsavel, foreign_key: true
      t.references :atuacao, foreign_key: true
      t.string :dataLimite
      t.string :references
      t.string :url

      t.timestamps
    end
  end
end
