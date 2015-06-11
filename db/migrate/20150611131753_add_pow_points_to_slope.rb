class AddPowPointsToSlope < ActiveRecord::Migration
  def change
    add_column :slopes, :pow_points, :integer
  end
end
