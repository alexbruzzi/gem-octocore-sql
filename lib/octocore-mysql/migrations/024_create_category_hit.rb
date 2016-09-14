require "rubygems"
require "active_record"

class CreateCategoryHit < ActiveRecord::Migration

  def self.up
    create_table :category_hit do |t|
    end
  end

  def self.down
    drop_table :category_hit
  end
 
end