class CreateDataLimite < ActiveRecord::Migration[5.2]
  def change
    create_table :dataLimite do |t|
      t.integer :timestamp
      t.string :formatedd
      t.string :string
      t.string :cor
      t.string :descricao

      t.timestamps
    end
  end
end
