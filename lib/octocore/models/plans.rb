require 'active_record'
require 'octocore/record'

module Octo

  class Plan
 < ActiveRecord::Base
    include Octo::Record

    key :id, :int
    key :active, :boolean

    column :name, :text
  end
end

