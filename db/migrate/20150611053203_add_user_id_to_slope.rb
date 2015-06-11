class AddUserIdToSlope < ActiveRecord::Migration
  def change
    add_column :slopes, :user_id, :integer
  end
end
