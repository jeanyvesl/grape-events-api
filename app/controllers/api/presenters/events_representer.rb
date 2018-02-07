require 'grape-roar'
require 'roar'
require 'roar/json/hal'

module API
  module Presenters
    module EventsRepresenter
      include Roar::JSON::HAL
      include Grape::Roar::Representer

      collection :entries, extend: EventRepresenter, as: :events, embedded: true

      link :self do
        "http://localhost:9292/splines"
      end
    end
  end
end
