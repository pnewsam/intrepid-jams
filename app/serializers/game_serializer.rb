class GameSerializer < ActiveModel::Serializer
  attributes :id
  # embed :ids
  has_many :teams
end
