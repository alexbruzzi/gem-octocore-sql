require "rubygems"
require "active_record"

class CreateCategoryTrend < ActiveRecord::Migration

  def self.up
    create_table :category_trend do |t|
    end
  end

  def self.down
    drop_table :category_trend
  end
 
end