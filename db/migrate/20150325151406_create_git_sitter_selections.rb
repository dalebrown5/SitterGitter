class CreateGitSitterSelections < ActiveRecord::Migration
  def change
    create_table :git_sitter_selections do |t|
      t.references :git_sitter
      t.references :sitter

      t.timestamps null: false
    end
  end
end
