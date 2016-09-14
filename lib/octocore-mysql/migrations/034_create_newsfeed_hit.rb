require "rubygems"
require "active_record"

class CreateNewsfeedHit < ActiveRecord::Migration

  def self.up
    create_table :newsfeed_hit do |t|
    end
  end

  def self.down
    drop_table :newsfeed_hit
  end
 
end