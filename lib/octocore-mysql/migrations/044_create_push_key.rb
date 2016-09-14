require "rubygems"
require "active_record"

class CreatePushKey < ActiveRecord::Migration

  def self.up
    create_table :push_key do |t|
      t.column :push_type, :bigint, null: false
      t.column :key, :text
    end
  end

  def self.down
    drop_table :push_key
  end
 
end