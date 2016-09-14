require "rubygems"
require "active_record"

class CreateCategoryBaseline < ActiveRecord::Migration

  def self.up
    create_table :category_baseline do |t|
    end
  end

  def self.down
    drop_table :category_baseline
  end
 
end