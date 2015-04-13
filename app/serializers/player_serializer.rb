class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :salary, :age, :team_id
end
