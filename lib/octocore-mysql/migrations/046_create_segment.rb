require "rubygems"
require "active_record"

class CreateSegment < ActiveRecord::Migration

  def self.up
    create_table :segment do |t|
      t.column :name_slug, :text, null: false
      t.column :active, :boolean, null: false
      t.column :intelligence, :boolean
      t.column :name, :text
      t.column :type, :integer
      t.column :event_type, :text
      t.column :dimensions, :set
      t.column :operators, :set
      t.column :dim_operators, :set
      t.column :values, :set
    end
  end

  def self.down
    drop_table :segment
  end
 
end