# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  commenter  :string
#  body       :text
#  article_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_comments_on_article_id  (article_id)
#

class Comment < ActiveRecord::Base

	belongs_to :user
	belongs_to :article
	validates  :commenter, presence: true
	validates  :body, 	   presence: true
	
end
