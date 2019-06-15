class CreateAtuacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :atuacaos do |t|
      t.integer :atuacaoKey
      t.boolean :ativo
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
