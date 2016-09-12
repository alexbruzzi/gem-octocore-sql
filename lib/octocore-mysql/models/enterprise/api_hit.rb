require 'active_record'

require 'octocore-mysql/counter'
require 'octocore-mysql/trendable'
require 'octocore-mysql/schedeuleable'

module Octo
  class ApiHit < ActiveRecord::Base
    extend Octo::Counter
    extend Octo::Scheduleable

    COUNTERS = 30

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    countables

  end
end
