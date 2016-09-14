require "rubygems"
require "active_record"

class CreateSegmentData < ActiveRecord::Migration

  def self.up
    create_table :segment_data do |t|
      t.column :segment_slug, :text, null: false
      t.column :ts, :timestamp, null: false
      t.column :value, :float
    end
  end

  def self.down
    drop_table :segment_data
  end
 
end