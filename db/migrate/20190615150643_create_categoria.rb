class CreateCategoria < ActiveRecord::Migration[5.2]
  def change
    create_table :categoria do |t|
      t.integer :categoriaKey
      t.string :descricao
      t.string :cor

      t.timestamps
    end
  end
end
