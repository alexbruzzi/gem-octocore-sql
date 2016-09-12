require 'active_record'

module Octo
  class AppLogout < ActiveRecord::Base

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :created_at, :timestamp
    key :userid, :bigint
  end
end
