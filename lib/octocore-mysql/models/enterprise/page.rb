require 'active_record'

module Octo
  class Page < ActiveRecord::Base

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :routeurl, :text

    set :categories, :text
    set :tags, :text
  end
end

