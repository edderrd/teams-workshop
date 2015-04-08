class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :salary, :age
  # has_one :team
end
