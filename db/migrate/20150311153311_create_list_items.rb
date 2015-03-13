class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.references :user, index: true
      t.references :sitter, index: true

      t.timestamps null: false
    end
      add_foreign_key :list_items, :users
      add_foreign_key :list_items, :sitters
  end
end
