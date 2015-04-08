class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :players

  # has_many :players

  def players
    object.players.pluck(:id)
  end

end
