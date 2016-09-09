require 'active_record'

module Octo
  class PushKey < ActiveRecord::Base

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :push_type, :bigint
    column :key, :text

    timestamps
  end
end

