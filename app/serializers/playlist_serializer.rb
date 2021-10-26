class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :songs, :rating
  has_one :user
end
