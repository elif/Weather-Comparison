class CreateDataPoints < ActiveRecord::Migration
  def self.up
    create_table :data_points do |t|
      t.integer :temperature_1
      t.integer :temperature_2

      t.timestamps
    end
  end

  def self.down
    drop_table :data_points
  end
end
