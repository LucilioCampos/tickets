class CreateResposavels < ActiveRecord::Migration[5.2]
  def change
    create_table :resposavels do |t|
      t.string :nome

      t.timestamps
    end
  end
end
