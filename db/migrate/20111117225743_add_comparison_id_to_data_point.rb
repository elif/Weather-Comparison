class AddComparisonIdToDataPoint < ActiveRecord::Migration
  def self.up
    add_column :data_points, :comparison_id, :integer
  end

  def self.down
    remove_column :data_points, :comparison_id
  end
end
