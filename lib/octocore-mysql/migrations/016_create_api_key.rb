require "rubygems"
require "active_record"

class CreateApiKey < ActiveRecord::Migration

  def self.up
    create_table :api_key do |t|
      t.column :enterprise_key, :text, null: false
      t.column :enterprise_id, :text, null: false
    end
  end

  def self.down
    drop_table :api_key
  end
 
end