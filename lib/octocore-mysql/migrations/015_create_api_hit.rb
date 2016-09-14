require "rubygems"
require "active_record"

class CreateApiHit < ActiveRecord::Migration

  def self.up
    create_table :api_hit do |t|
    end
  end

  def self.down
    drop_table :api_hit
  end
 
end