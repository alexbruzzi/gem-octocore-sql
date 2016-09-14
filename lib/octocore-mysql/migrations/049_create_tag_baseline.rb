require "rubygems"
require "active_record"

class CreateTagBaseline < ActiveRecord::Migration

  def self.up
    create_table :tag_baseline do |t|
    end
  end

  def self.down
    drop_table :tag_baseline
  end
 
end