class AddConditionsToDataPoints < ActiveRecord::Migration
  def self.up
    add_column :data_points, :conditions_1, :string
    add_column :data_points, :conditions_2, :string
  end

  def self.down
    remove_column :data_points, :conditions_2
    remove_column :data_points, :conditions_1
  end
end
