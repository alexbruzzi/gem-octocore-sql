require "rubygems"
require "active_record"

class CreateNotificationHit < ActiveRecord::Migration

  def self.up
    create_table :notification_hit do |t|
    end
  end

  def self.down
    drop_table :notification_hit
  end
 
end