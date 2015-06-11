class CreateSlopes < ActiveRecord::Migration
  def change
    create_table :slopes do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
