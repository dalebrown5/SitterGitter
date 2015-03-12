class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.references :user, index: true
      t.references :sitter, index: true

      t.timestamps null: false
    end
  end
end
