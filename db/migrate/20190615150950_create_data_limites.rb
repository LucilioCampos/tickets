class CreateDataLimites < ActiveRecord::Migration[5.2]
  def change
    create_table :data_limites do |t|
      t.integer :timestamp
      t.string :formated
      t.string :string
      t.string :cor
      t.string :descricao

      t.timestamps
    end
  end
end
