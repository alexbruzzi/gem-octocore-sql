require "rubygems"
require "active_record"

class CreateApiTrack < ActiveRecord::Migration

  def self.up
    create_table :api_track do |t|
      t.column :customid, :text, null: false
      t.column :created_at, :timestamp
      t.column :json_dump, :text
      t.column :type, :text
    end
  end

  def self.down
    drop_table :api_track
  end
 
end