require "rubygems"
require "active_record"

class CreateDimensionChoice < ActiveRecord::Migration

  def self.up
    create_table :dimension_choice do |t|
      t.column :dimension, :integer, null: false
      t.column :choice, :text
    end
  end

  def self.down
    drop_table :dimension_choice
  end
 
end