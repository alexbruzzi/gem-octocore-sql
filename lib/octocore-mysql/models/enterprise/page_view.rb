require 'active_record'

module Octo
  class PageView < ActiveRecord::Base

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :userid,     :bigint
    key :created_at, :timestamp, order: :desc

    column :routeurl, :text
  end
end
