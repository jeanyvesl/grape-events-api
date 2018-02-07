module API
  module V1
    module Defaults
      extend ActiveSupport::Concern

      included do
        prefix "api"
        version 'v1', using: :path
        default_format :json
        format :json
        formatter :json,
             Grape::Formatter::Roar

        helpers do
          def permitted_params
            @permitted_params ||= declared(params,
               include_missing: false)
          end

          def logger
            Rails.logger
          end

          def event_params(params)
            {
              event_name:  params[:event_name],
              description: params[:description],
              event_category:   params[:event_category],
              event_type:   params[:event_type],
              number_of_participants:   params[:number_of_participants],
              website:   params[:website]
            }
          end
        end

        rescue_from ActiveRecord::RecordNotFound do |e|
          error_response(message: e.message, status: 404)
        end

        rescue_from ActiveRecord::RecordInvalid do |e|
          error_response(message: e.message, status: 422)
        end
      end
    end
  end
end
