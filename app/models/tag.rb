class Tag < ActiveRecord::Base

	has_many :taggings

	# A tag has a list of articles through the relationship of taggings
	has_many :articles, through: :taggings

	def to_s
		name
	end

end
