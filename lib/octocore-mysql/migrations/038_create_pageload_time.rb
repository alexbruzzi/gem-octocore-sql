require "rubygems"
require "active_record"

class CreatePageloadTime < ActiveRecord::Migration

  def self.up
    create_table :pageload_time do |t|
      t.column :pageload_type, :integer, null: false
      t.column :counter_type, :integer, null: false
      t.column :ts, :timestamp, null: false
      t.column :time, :integer
    end
  end

  def self.down
    drop_table :pageload_time
  end
 
end