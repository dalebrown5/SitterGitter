class CreateSitterSelections < ActiveRecord::Migration
  def change
    create_table :sitter_selections do |t|
      t.references :user, index: true
      t.references :sitter, index: true

      t.timestamps null: false
    end
    add_foreign_key :sitter_selections, :users
    add_foreign_key :sitter_selections, :sitters
  end
end
