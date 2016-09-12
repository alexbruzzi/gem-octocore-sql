require 'active_record'

# Model for Subscribe to us (in the footer), on the microsite
module Octo

  class Subscriber < ActiveRecord::Base

    key :created_at, :timestamp
    key :email, :text

  end
end
