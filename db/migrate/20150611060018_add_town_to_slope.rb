class AddTownToSlope < ActiveRecord::Migration
  def change
    add_column :slopes, :town, :string
  end
end
