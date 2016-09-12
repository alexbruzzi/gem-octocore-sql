require 'active_record'

require 'octocore-mysql/counter'
require 'octocore-mysql/trendable'
require 'octocore-mysql/schedeuleable'

module Octo

  class CategoryHit < ActiveRecord::Base
    extend Octo::Counter
    extend Octo::Trendable
    extend Octo::Scheduleable

    COUNTERS = 20

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    countables
    trendables

    baseline 'Octo::CategoryBaseline'
    trends_class 'Octo::CategoryTrend'

  end
end
