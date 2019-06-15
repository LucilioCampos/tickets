class CreateAtuacao < ActiveRecord::Migration[5.2]
  def change
    create_table :atuacao do |t|
      t.integer :atuacaoKey
      t.boolean :ativo
      t.integer :usuario

      t.timestamps
    end
  end
end
