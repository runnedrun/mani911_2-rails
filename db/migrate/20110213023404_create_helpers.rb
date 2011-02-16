class CreateHelpers < ActiveRecord::Migration
  def self.up
    create_table :helpers do |t|
      t.belongs_to :call
      t.timestamps
    end
  end

  def self.down
    drop_table :helpers
  end
end
