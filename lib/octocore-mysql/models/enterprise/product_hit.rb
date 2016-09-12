require 'active_record'

require 'octocore-mysql/counter'
require 'octocore-mysql/trendable'
require 'octocore-mysql/schedeuleable'

module Octo

  class ProductHit < ActiveRecord::Base
    extend Octo::Counter
    extend Octo::Trendable
    extend Octo::Scheduleable

    COUNTERS = 30

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    countables
    trendables

    baseline 'Octo::ProductBaseline'
    trends_class 'Octo::ProductTrend'

  end
end
