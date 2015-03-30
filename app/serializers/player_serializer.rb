class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :number
  has_one :team
end
