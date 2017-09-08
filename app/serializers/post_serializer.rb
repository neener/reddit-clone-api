class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :link, :img_url, :upvote_count, :created_at

  has_many :comments
end
