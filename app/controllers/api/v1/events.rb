module API
  module V1
    class Events < Grape::API
      include API::V1::Defaults

      resource :events do
        desc "Return all events"
        get "", root: :events do
          Event.all
        end

        desc "Return an event"
        params do
          requires :id, type: String, desc: "ID of the event"
        end
        get ":id", root: "events" do
          Event.where(id: permitted_params[:id]).first!
        end

        desc "Create a new event"
        params do
          requires :event_name, type: String, desc: "Name of the event to create"
          optional :description, type: String, desc: "Description of the event to create"
          optional :event_category, type: String, desc: "Category of the event to create"
          optional :event_type, type: String, desc: "Type of the event to create"
          optional :number_of_participants, type: Integer, desc: "Maximum number of participants accepted for the event to create"
          optional :website, type: String, desc: "URL of the website of the event to create"
        end
        post "", :events do
          Event.create(event_params(params))
        end
      end
    end
  end
end
