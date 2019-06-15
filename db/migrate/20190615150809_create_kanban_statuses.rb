class CreateKanbanStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :kanban_statuses do |t|
      t.integer :kanbanStatusKey
      t.string :descricao
      t.boolean :fim
      t.integer :ordem

      t.timestamps
    end
  end
end
