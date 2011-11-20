class CreateComparisons < ActiveRecord::Migration
  def self.up
    create_table :comparisons do |t|
      t.string :location_1
      t.string :location_2

      t.timestamps
    end
  end

  def self.down
    drop_table :comparisons
  end
end
