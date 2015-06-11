class AddPicToSlope < ActiveRecord::Migration
  def change
    add_column :slopes, :pic, :string
  end
end
