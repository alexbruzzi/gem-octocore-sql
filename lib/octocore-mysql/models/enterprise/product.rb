require 'active_record'
require 'octocore-mysql/record'

module Octo
  class Product < ActiveRecord::Base
    include Octo::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :id, :bigint

    column :price, :float
    column :name, :text
    column :routeurl, :text

    set :categories, :text
    set :tags, :text

    timestamps
  end
end
