class CreateSitters < ActiveRecord::Migration
  def change
    create_table :sitters do |t|
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
