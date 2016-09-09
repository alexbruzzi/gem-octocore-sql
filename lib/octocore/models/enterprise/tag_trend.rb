require 'active_record'
require 'octocore/trends'

module Octo

  # Class for storing trending tag
  class TagTrend < ActiveRecord::Base
    extend Octo::Trends

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    trendable

    trend_for 'Octo::TagHit'
    trend_class 'Octo::Tag'
  end
end

