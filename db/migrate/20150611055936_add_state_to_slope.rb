class AddStateToSlope < ActiveRecord::Migration
  def change
    add_column :slopes, :state, :string
  end
end
