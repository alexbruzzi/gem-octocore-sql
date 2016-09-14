require "rubygems"
require "active_record"

class CreateCtr < ActiveRecord::Migration

  def self.up
    create_table :ctr do |t|
      t.column :ts, :timestamp, null: false
      t.column :value, :set
    end
  end

  def self.down
    drop_table :ctr
  end
 
end