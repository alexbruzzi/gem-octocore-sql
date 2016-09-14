require "rubygems"
require "active_record"

class CreateCategory < ActiveRecord::Migration

  def self.up
    create_table :category do |t|
      t.column :cat_text, :text, null: false
    end
  end

  def self.down
    drop_table :category
  end
 
end