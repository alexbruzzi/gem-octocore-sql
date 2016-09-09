require 'active_record'
require 'octocore/record'

module Octo
  class ApiEvent < ActiveRecord::Base
    include Octo::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :eventname, :text
  end
end

