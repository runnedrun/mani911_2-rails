class CreateInstructions < ActiveRecord::Migration
  def self.up
    create_table :instructions do |t|
      t.belongs_to :pushed
      t.string :description
      t.string :title
      t.timestamps
      
    end
  end

  def self.down
    drop_table :instructions
  end
end
