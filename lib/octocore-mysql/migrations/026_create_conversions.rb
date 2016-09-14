require "rubygems"
require "active_record"

class CreateConversions < ActiveRecord::Migration

  def self.up
    create_table :conversions do |t|
      t.column :type, :integer, null: false
      t.column :ts, :timestamp, null: false
      t.column :value, :float
    end
  end

  def self.down
    drop_table :conversions
  end
 
end