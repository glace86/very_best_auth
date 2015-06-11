class AddPowPointsToUser < ActiveRecord::Migration
  def change
    add_column :users, :pow_points, :integer
  end
end
