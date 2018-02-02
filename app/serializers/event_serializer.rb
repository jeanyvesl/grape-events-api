class EventSerializer < ActiveModel::Serializer

  attributes :id, :event_name, :description,
       :event_category, :event_type, :number_of_participants, :website,
       :created_at, :updated_at
end
