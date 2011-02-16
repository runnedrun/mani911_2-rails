class CreateCallers < ActiveRecord::Migration
  def self.up
    create_table :callers do |t|
      t.belongs_to :call
      t.timestamps
    end
  end

  def self.down
    drop_table :callers
  end
end
