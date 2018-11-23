class AddDoneToTodo < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :done, :bolean, default: false
  end
end
