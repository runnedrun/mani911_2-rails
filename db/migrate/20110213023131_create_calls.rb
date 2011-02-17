class CreateCalls < ActiveRecord::Migration
  def self.up
    create_table :calls do |t|
      t.string :latitude
      t.string :longitude
      t.string :emergency_description
      t.string :comments
      t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :calls
  end
end
