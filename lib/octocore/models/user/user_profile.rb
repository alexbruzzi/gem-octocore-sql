require 'active_record'

module Octo
  class UserProfileDetails < ActiveRecord::Base

    belongs_to :user, class_name: 'Octo::User'

    key :email, :text
    column :username, :text
    column :dob, :text
    column :gender, :text
    column :alternate_email, :text
    column :mobile, :text
    column :extras, :text

    timestamps
  end
end

