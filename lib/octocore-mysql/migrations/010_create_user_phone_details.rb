require "rubygems"
require "active_record"

class CreateUserPhoneDetails < ActiveRecord::Migration

  def self.up
    create_table :user_phone_details do |t|
      t.column :deviceid, :text, null: false
      t.column :manufacturer, :text
      t.column :model, :text
      t.column :os, :text
    end
  end

  def self.down
    drop_table :user_phone_details
  end

end