require 'active_record'
require 'octocore/record'

module Octo
  class Category < ActiveRecord::Base
    include Octo::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :cat_text, :text
    timestamps
  end
end
