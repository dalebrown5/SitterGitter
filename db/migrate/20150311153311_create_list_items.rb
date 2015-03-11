class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.references :user
      t.references :sitter

      t.timestamps null: false
    end
  end
end
