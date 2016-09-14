require "rubygems"
require "active_record"

class CreateFunnelData < ActiveRecord::Migration

  def self.up
    create_table :funnel_data do |t|
      t.column :funnel_slug, :text
      t.column :ts, :timestamp
      t.column :value, :set
    end
  end

  def self.down
    drop_table :funnel_data
  end
 
end