require 'grape-roar'
require 'roar'
require 'roar/json/hal'

module API
  module Presenters
    module EventRepresenter
      include Roar::JSON::HAL
      include Grape::Roar::Representer

      property :id
      property :event_name
      property :description
      property :event_category
      property :event_type
      property :number_of_participants
      property :website
      property :created_at
      property :updated_at

      link :self do
        "http://localhost:9292/splines/#{id}"
      end

    end
  end
end
