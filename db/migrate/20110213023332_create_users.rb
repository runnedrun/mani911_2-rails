class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.belongs_to :caller
      t.belongs_to :helper
      t.string :name
      t.decimal :age
      t.string :med_conditions
      t.string :residence
      t.string :number
      t.string :carrier

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
