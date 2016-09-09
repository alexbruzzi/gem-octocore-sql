require 'active_record'

module Octo
  class Template < ActiveRecord::Base

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :category_type, :text

    column :template_text, :text
    column :active, :boolean

    timestamps

  end
end

