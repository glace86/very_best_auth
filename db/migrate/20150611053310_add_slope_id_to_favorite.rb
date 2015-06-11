class AddSlopeIdToFavorite < ActiveRecord::Migration
  def change
    add_column :favorites, :slope_id, :integer
  end
end
