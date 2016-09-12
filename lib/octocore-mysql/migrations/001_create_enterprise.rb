require "rubygems"
require "active_record"

class CreateEnterprise < ActiveRecord::Migration
  
  def self.up
    create_table :enterprise do |t|
      t.column :_id,
        :string, null: false
      t.column :name,
        :string
    end
  end

  def self.down
    drop_table :enterprise
  end

end