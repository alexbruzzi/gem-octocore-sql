require 'active_record'

module Octo
  class PushToken < ActiveRecord::Base

    belongs_to :user, class_name: 'Octo::User'

    key :push_type, :bigint
    column :pushtoken, :text

    timestamps
  end
end

