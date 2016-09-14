require "rubygems"
require "active_record"

class CreatePushToken < ActiveRecord::Migration

  def self.up
    create_table :push_token do |t|
      t.column :push_type,
        :integer, null: false
      t.column :pushtoken,
        :text
    end
  end

  def self.down
    drop_table :push_token
  end

end