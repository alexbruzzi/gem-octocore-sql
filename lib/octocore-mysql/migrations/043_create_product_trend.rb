require "rubygems"
require "active_record"

class CreateProductTrend < ActiveRecord::Migration

  def self.up
    create_table :product_trend do |t|
    end
  end

  def self.down
    drop_table :product_trend
  end
 
end