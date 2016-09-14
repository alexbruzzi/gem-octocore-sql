require "rubygems"
require "active_record"

class CreateContactUs < ActiveRecord::Migration

  def self.up
    create_table :contact_us do |t|
      t.column :email,
        :text, null: false
      t.column :typeofrequest, :text
      t.column :firstname, :string
      t.column :lastname, :string
      t.column :message, :text
    end
  end

  def self.down
    drop_table :contact_us
  end

end