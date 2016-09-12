require 'active_record'

module Octo
  class ProductPageView < ActiveRecord::Base
    belongs_to :enterprise, class_name: 'Octo::Enterprise'
    
    key :userid, :bigint
    key :created_at, :timestamp, order: :desc
    
    column :product_id, :bigint
  end
end
