class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :players

  def players
    object.players.pluck(:id)
  end
end
