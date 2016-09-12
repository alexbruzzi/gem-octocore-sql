require 'active_record'

module Octo
  class ApiKey < ActiveRecord::Base

    key :enterprise_key, :text
    key :enterprise_id, :uuid

  end
end
