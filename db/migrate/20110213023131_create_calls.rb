class CreateCalls < ActiveRecord::Migration
  def self.up
    create_table :calls do |t|
      t.string :location
      t.string :emergency_description
      t.string :comments
      t.boolean :status
      t.timestamps
    end
  end

  def self.down
    drop_table :calls
  end
end
