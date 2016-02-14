# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  title       :string
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  view_count  :integer
#  category_id :integer
#

class Article < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :category, counter_cache: true
	has_many :comments, dependent: :destroy
	has_many :taggings

	# An article has a list of tags through the relationship of taggings
	has_many :tags, through: :taggings

	validates :title, presence: true, length: { minimum: 5,
    too_short: "%{count} characters is the maximum allowed" }

	validates :body,  presence: true, length: { minimum: 10 }
	validates :category_id, presence: true

	validates_associated :comments

	
	def tag_list
		tags.join(", ")
	end

	def tag_list=(tags_string)
		tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
		new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
		self.tags = new_or_found_tags
	end

	def increase_view_counter
		update_attributes(:view_count => view_count + 1)
	end

end
