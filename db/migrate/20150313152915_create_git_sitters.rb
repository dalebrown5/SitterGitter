class CreateGitSitters < ActiveRecord::Migration
  def change
    create_table :git_sitters do |t|
      t.datetime :when
      t.string :how_long
      t.text :message
      t.references :user, index: true
      t.references :sitter_selection, index: true

      t.timestamps null: false
    end
    add_foreign_key :git_sitters, :users
    add_foreign_key :git_sitters, :sitter_selections
  end
end
