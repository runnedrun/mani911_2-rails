class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.belongs_to :caller
      t.belongs_to :heler
      t.string :name
      t.decimal :age
      t.string :med_conditions
      t.string :residence

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
