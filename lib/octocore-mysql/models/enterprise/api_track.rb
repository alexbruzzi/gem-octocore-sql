require 'active_record'

module Octo
  class ApiTrack < ActiveRecord::Base

    key :customid, :uuid
    column :created_at, :timestamp
    column :json_dump, :text
    column :type, :text, index: true

  end
end
