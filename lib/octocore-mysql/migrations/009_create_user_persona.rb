require "rubygems"
require "active_record"

class CreateUserPersona < ActiveRecord::Migration

  def self.up
    create_table :user_persona do |t|
      t.column :ts, :time, null: false
      t.column :engagement, :decimal
    end
  end

  def self.down
    drop_table :user_persona
  end

end