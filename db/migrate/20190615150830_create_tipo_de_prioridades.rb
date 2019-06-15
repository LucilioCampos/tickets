class CreateTipoDePrioridades < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_de_prioridades do |t|
      t.integer :tipoDePrioridadeKey
      t.string :descricao
      t.string :cor
      t.integer :peso

      t.timestamps
    end
  end
end
