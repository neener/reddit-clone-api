class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :link, :img_url, :upvote_count

  has_many :comments
end
