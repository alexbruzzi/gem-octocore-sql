require "rubygems"
require "active_record"

class CreateUser < ActiveRecord::Migration

  def self.up
    create_table :user do |t|
      t.column :_id,
        :integer, null: false
    end
  end

  def self.down
    drop_table :user
  end

end