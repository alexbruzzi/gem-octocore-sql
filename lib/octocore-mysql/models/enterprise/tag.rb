require 'active_record'
require 'octocore-mysql/record'

module Octo
  class Tag < ActiveRecord::Base
    include Octo::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :tag_text, :text
    timestamps
  end
end
