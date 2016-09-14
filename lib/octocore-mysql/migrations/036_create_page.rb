require "rubygems"
require "active_record"

class CreatePage < ActiveRecord::Migration

  def self.up
    create_table :page do |t|
      t.column :routeurl, :text

      t.column :categories, :set
      t.column :tags, :set
    end
  end

  def self.down
    drop_table :page
  end
 
end