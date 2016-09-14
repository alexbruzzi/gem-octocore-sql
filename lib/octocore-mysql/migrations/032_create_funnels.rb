require "rubygems"
require "active_record"

class CreateFunnel < ActiveRecord::Migration

  def self.up
    create_table :funnel do |t|
      t.column :name_slug, :text
      t.column :funnel, :set
      t.column :name, :text
      t.column :active, :boolean
    end
  end

  def self.down
    drop_table :funnel
  end
 
end