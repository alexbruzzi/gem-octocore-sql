require "rubygems"
require "active_record"

class CreateProductHit < ActiveRecord::Migration

  def self.up
    create_table :product_hit do |t|
    end
  end

  def self.down
    drop_table :product_hit
  end
 
end