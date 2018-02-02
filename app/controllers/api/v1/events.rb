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
          requires :name, type: String, desc: "Name of the event to create"
        end
        post "", :events do
          Event.create(event: params[:name])
        end
      end
    end
  end
end
