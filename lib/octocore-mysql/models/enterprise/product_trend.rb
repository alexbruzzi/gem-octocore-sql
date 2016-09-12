require 'active_record'
require 'octocore-mysql/trends'

module Octo

  # Class for storing trending product
  class ProductTrend < ActiveRecord::Base
    extend Octo::Trends

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    trendable

    trend_for 'Octo::ProductHit'
    trend_class 'Octo::Product'
  end
end
