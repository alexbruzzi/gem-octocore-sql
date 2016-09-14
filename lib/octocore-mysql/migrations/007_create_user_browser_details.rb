require "rubygems"
require "active_record"

class CreateUserBrowserDetails < ActiveRecord::Migration

  def self.up
    create_table :user_browser_details do |t|
      t.column :cookieid, :text
      t.column :name, :text
      t.column :platform, :text
      t.column :manufacturer, :text
    end
  end

  def self.down
    drop_table :user_browser_details
  end

end