require "rubygems"
require "active_record"

class CreateAuthorization < ActiveRecord::Migration

  def self.up
    create_table :authorization do |t|
      t.column :username, :text, null: false
      t.column :enterprise_id, :text
      t.column :email, :text
      t.column :apikey, :text
      t.column :session_token, :text
      t.column :custom_id, :text
      t.column :password, :text
      t.column :admin, :boolean
    end
  end

  def self.down
    drop_table :authorization
  end
 
end