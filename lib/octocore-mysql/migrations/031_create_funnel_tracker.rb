require "rubygems"
require "active_record"

class CreateFunnelTracker < ActiveRecord::Migration

  def self.up
    create_table :funnel_tracker do |t|
      t.column :enterprise_id, :text
      t.column :p1, :text
      t.column :direction, :integer
      t.column :p2, :text
      t.column :weight, :integer
    end
  end

  def self.down
    drop_table :funnel_tracker
  end
 
end