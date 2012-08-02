class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :body
      t.integer :list_id

      t.timestamps
    end
  end
end
