# == Schema Information
#
# Table name: categories
#
#  id             :integer          not null, primary key
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  articles_count :integer
#

class Category < ActiveRecord::Base

	has_many :articles

	validates :name, presence: true

end
