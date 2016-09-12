require 'active_record'

module Octo
  class User < ActiveRecord::Base
    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :id, :bigint

    timestamps

    has_many :user_location_histories
  end
end

