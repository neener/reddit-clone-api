class Post < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :upvotes, dependent: :destroy

	def upvote_count
		upvotes.count
	end

	validates :title, :link, :img_url, presence: true
end
