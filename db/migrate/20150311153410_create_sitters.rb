class CreateSitters < ActiveRecord::Migration
  def change
    create_table :sitters do |t|
      t.string :name
      t.string :phone
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :sitters, :users
  end
end
