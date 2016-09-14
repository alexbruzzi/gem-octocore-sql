require "rubygems"
require "active_record"

class CreateAdapterDetails < ActiveRecord::Migration

  def self.up
    create_table :adapter_details do |t|
      t.column :adapter_id, :integer, null: false
      t.column :enable, :boolean
      t.column :settings, :text
    end
  end

  def self.down
    drop_table :adapter_details
  end
 
end