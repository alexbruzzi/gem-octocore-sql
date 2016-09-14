require "rubygems"
require "active_record"

class CreateTagHit < ActiveRecord::Migration

  def self.up
    create_table :tag_hit do |t|
    end
  end

  def self.down
    drop_table :tag_hit
  end
 
end