class CreateProjeto < ActiveRecord::Migration[5.2]
  def change
    create_table :projeto do |t|
      t.string :nome

      t.timestamps
    end
  end
end
