class Article < ActiveRecord::Base
	
	has_many :comments

	validates :title, presence: true, length: { minimum: 5,
    too_short: "%{count} characters is the maximum allowed" }

	validates :body,  presence: true, length: { minimum: 10 }

	validates_associated :comments

end
