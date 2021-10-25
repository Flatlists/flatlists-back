class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :song, :rating
  has_one :user
end
