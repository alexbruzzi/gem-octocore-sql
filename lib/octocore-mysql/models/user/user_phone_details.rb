require 'active_record'

module Octo
  class UserPhoneDetails < ActiveRecord::Base

    belongs_to :user, class_name: 'Octo::User'

    key :deviceid, :text
    column :manufacturer, :text
    column :model, :text
    column :os, :text

    timestamps
  end
end

