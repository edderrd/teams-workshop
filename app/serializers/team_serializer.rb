class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :player_count

  def player_count
    object.players.count
  end

end
