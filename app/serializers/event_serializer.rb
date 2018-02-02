class EventSerializer < ActiveModel::Serializer

  attributes :id, :event_name,
       :category, :type, :number_of_participants, :website,
       :created_at, :updated_at
end
