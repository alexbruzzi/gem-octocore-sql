require "rubygems"
require "active_record"

class CreateUserTimeline < ActiveRecord::Migration

  def self.up
    create_table :user_timeline do |t|
      t.column :ts, :timestamp, null: false
      t.column :type, :int
      t.column :title, :text
      t.column :location_type, :int
      t.column :insight, :text
      t.column :details, :text
    end
  end

  def self.down
    drop_table :user_profile_details
  end

end