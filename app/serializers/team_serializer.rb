class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :player_count

  has_many :players

  def player_count
    object.players.count
  end

end
