require "rubygems"
require "active_record"

class CreateTemplate < ActiveRecord::Migration

  def self.up
    create_table :template do |t|
      t.column :category_type, :text, null: false
      t.columnt :template_text, :text
      t.column :active, :boolean
    end
  end

  def self.down
    drop_table :template
  end
 
end