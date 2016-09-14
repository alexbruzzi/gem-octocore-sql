require "rubygems"
require "active_record"

class CreateSubscribe < ActiveRecord::Migration

  def self.up
    create_table :subscribe do |t|
      t.column :email,
        :text, null: false
    end
  end

  def self.down
    drop_table :subscribe
  end

end