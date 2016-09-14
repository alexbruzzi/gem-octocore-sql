require "rubygems"
require "active_record"

class CreateUserProfileDetails < ActiveRecord::Migration

  def self.up
    create_table :user_profile_details do |t|
      t.column :username, :text
      t.column :dob, :text
      t.column :gender, :text
      t.column :alternate_email, :text
      t.column :mobile, :text
      t.column :extras, :text
    end
  end

  def self.down
    drop_table :user_profile_details
  end

end