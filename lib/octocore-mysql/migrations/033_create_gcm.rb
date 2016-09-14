require "rubygems"
require "active_record"

class CreateGcmNotification < ActiveRecord::Migration

  def self.up
    create_table :gcm_notification do |t|
      t.column :gcmid, :varchar
      t.column :userid, :bigint
      t.column :score, :float
      t.column :ack, :boolean
      t.column :sent_at, :timestamp
      t.column :recieved_at, :timestamp
    end
  end

  def self.down
    drop_table :gcm_notification
  end
 
end