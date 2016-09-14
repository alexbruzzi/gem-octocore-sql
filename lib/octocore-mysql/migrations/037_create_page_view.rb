require "rubygems"
require "active_record"

class CreatePageView < ActiveRecord::Migration

  def self.up
    create_table :page_view do |t|
      t.column :userid, :bigint, null: false
      t.column :created_at, :timestamp, null: false
      t.column :routeurl, :text
    end
  end

  def self.down
    drop_table :page_view
  end
 
end