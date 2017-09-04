class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :link, :img_url

  has_many :comments
end
