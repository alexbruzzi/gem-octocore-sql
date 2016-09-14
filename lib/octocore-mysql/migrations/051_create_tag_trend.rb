require "rubygems"
require "active_record"

class CreateTagTrend < ActiveRecord::Migration

  def self.up
    create_table :tag_trend do |t|
    end
  end

  def self.down
    drop_table :tag_trend
  end
 
end