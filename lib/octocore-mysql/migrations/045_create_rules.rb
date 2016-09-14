require "rubygems"
require "active_record"

class CreateRules < ActiveRecord::Migration

  def self.up
    create_table :rules do |t|
      t.column :name_slug, :text, null: false
      t.column :active, :boolean, null: false
      t.column :name, :text
      t.column :segment, :text
      t.column :template_cat, :text
      t.column :duration, :integer
      t.column :start_time, :timestamp
      t.column :end_time, :timestamp
    end
  end

  def self.down
    drop_table :rules
  end
 
end