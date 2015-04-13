class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :players, :image

  def players
    object.players.pluck(:id)
  end
  
  def image
    object.image_url
  end
end
