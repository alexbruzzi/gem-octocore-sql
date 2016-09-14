require "rubygems"
require "active_record"

class CreateEngagementTime < ActiveRecord::Migration

  def self.up
    create_table :engagement_time do |t|
      t.column :engagement_type, :integer
      t.column :counter_type, :integer
      t.column :ts, :timestamp
      t.column :time, :integer
    end
  end

  def self.down
    drop_table :engagement_time
  end
 
end