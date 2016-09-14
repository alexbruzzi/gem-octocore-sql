require "rubygems"
require "active_record"

class CreateProduct < ActiveRecord::Migration

  def self.up
    create_table :product do |t|
      t.column :id, :bigint, null: false
      t.column :price, :float
      t.column :name, :text
      t.column :routeurl, :text
      t.column :categories, :set
      t.column :tags, :set
    end
  end

  def self.down
    drop_table :product
  end
 
end