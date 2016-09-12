require 'active_record'
require 'octocore-mysql/record'

module Octo

  # Stores the data for funnels
  class FunnelData < ActiveRecord::Base
    include Octo::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :funnel_slug, :text

    key :ts, :timestamp
    list :value, :float

  end
end

