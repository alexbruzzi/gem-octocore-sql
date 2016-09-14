require "rubygems"
require "active_record"

class CreateAppInit < ActiveRecord::Migration

  def self.up
    create_table :api_init do |t|
      t.column :created_at, :timestamp, null: false
      t.column :userid, :integer, null: false
    end
  end

  def self.down
    drop_table :api_init
  end
 
end