class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.boolean :has_been_read, default: false
      t.boolean :on_current_list, default: false

      t.timestamps
    end
  end
end
