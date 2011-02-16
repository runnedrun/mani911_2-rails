class CreatePusheds < ActiveRecord::Migration
  def self.up
    create_table :pusheds do |t|
      t.belongs_to :caller
      t.belongs_to :helper
      t.timestamps
    end
  end

  def self.down
    drop_table :pusheds
  end
end
