class CreateTipoDePrioridade < ActiveRecord::Migration[5.2]
  def change
    create_table :tipoDePrioridade do |t|
      t.integer :tipoDePrioridadeKey
      t.string :descricao
      t.string :cor
      t.integer :peso

      t.timestamps
    end
  end
end
