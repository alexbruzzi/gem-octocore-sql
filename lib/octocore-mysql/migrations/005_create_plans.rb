require "rubygems"
require "active_record"

class CreatePlans < ActiveRecord::Migration

  def self.up
    create_table :plans do |t|
      t.column :active,
        :boolean, null: false
      t.column :name,
        :text
    end
  end

  def self.down
    drop_table :plans
  end

end