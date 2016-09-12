require 'active_record'

module Octo
  class UserLocationHistory < ActiveRecord::Base

    belongs_to :user, class_name: 'Octo::User'

    key :created_at, :timestamp

    column :latitude, :float
    column :longitude, :float
  end
end

