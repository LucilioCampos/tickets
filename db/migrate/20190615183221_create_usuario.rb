class CreateUsuario < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario do |t|
      t.integer :usuarioKey
      t.string :nome

      t.timestamps
    end
  end
end
