require "rubygems"
require "active_record"

class CreateTag < ActiveRecord::Migration

  def self.up
    create_table :tag do |t|
      t.column :tag_text, :text, null: false
    end
  end

  def self.down
    drop_table :tag
  end
 
end