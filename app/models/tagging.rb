# == Schema Information
#
# Table name: taggings
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  article_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_taggings_on_article_id  (article_id)
#  index_taggings_on_tag_id      (tag_id)
#

class Tagging < ActiveRecord::Base

	belongs_to :tag
	belongs_to :article
	
end
