class Article < ActiveRecord::Base
	
	has_many :comments
	has_many :taggings

	# An article has a list of tags through the relationship of taggings
	has_many :tags, through: :taggings

	validates :title, presence: true, length: { minimum: 5,
    too_short: "%{count} characters is the maximum allowed" }

	validates :body,  presence: true, length: { minimum: 10 }

	validates_associated :comments

	
	def tag_list
		tags.join(", ")
	end

	def tag_list=(tags_string)
		tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
		new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
		self.tags = new_or_found_tags
	end

end
