class CreateResponsavel < ActiveRecord::Migration[5.2]
  def change
    create_table :responsavel do |t|
      t.string :nome

      t.timestamps
    end
  end
end
