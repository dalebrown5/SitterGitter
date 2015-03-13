class CreateGitSitters < ActiveRecord::Migration
  def change
    create_table :git_sitters do |t|
      t.datetime :when
      t.string :how_long
      t.text :message
      t.references :user

      t.timestamps null: false
    end
    add_foreign_key :git_sitters, :users
  end
end
