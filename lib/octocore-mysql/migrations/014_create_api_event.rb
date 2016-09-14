require "rubygems"
require "active_record"

class CreateApiEvent < ActiveRecord::Migration

  def self.up
    create_table :api_event do |t|
      t.column :eventname, :text, null: false
    end
  end

  def self.down
    drop_table :api_event
  end
 
end