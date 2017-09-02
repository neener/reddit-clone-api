class Post < ApplicationRecord
	has_many :comments, dependent: :destroy

	validates :title, :link, :img_url, presence: true
end
