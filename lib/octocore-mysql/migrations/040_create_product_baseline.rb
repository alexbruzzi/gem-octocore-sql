require "rubygems"
require "active_record"

class CreateProductBaseline < ActiveRecord::Migration

  def self.up
    create_table :product_baseline do |t|
    end
  end

  def self.down
    drop_table :product_baseline
  end
 
end