class AddCoastToUser < ActiveRecord::Migration
  def change
    add_column :users, :coast, :integer
  end
end
