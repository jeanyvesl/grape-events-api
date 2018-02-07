require 'grape-roar'
require 'roar'
require 'roar/json/hal'

module API
  module Presenters
    module EventsRepresenter
      include Roar::JSON::HAL
      include Grape::Roar::Representer

      collection :entries, extend: EventRepresenter, as: :events, embedded: true

      link :self do |opts|
          request = Grape::Request.new(opts[:env])
          "#{request.base_url}/api/v1/events"
      end
    end
  end
end
