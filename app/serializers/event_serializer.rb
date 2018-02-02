class EventSerializer < ActiveModel::Serializer

  attributes :id, :name, :description,
       :category, :type, :number_of_participants, :website, :picture, 
       :created_at, :updated_at
end
