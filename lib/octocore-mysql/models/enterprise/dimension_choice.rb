require 'active_record'
require 'octocore-mysql/record'

module Octo

  # Choices for dimensions
  class DimensionChoice < ActiveRecord::Base
    include Octo::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :dimension, :int
    column :choice, :text

    timestamps

  end
end

