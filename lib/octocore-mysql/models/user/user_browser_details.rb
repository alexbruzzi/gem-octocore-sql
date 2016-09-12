require 'active_record'

module Octo
  class UserBrowserDetails < ActiveRecord::Base

    belongs_to :user, class_name: 'Octo::User'

    column :cookieid, :text
    column :name, :text
    column :platform, :text
    column :manufacturer, :text

    timestamps
  end
end