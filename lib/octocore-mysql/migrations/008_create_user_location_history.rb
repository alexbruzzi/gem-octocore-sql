require "rubygems"
require "active_record"

class CreateUserLocationHistory < ActiveRecord::Migration

  def self.up
    create_table :user_location_history do |t|
      t.column :latitude, :decimal
      t.column :longitude, :decimal
    end
  end

  def self.down
    drop_table :user_location_history
  end

end