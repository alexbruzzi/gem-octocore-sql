require "rubygems"
require "active_record"

class CreateProductPageView < ActiveRecord::Migration

  def self.up
    create_table :product_page_view do |t|
      t.column :userid, :bigint, null: false
      t.column :created_at, :timestamp, null: false
      t.column :product_id, :bigint
    end
  end

  def self.down
    drop_table :product_page_view
  end
 
end