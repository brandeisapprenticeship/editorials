class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :assignment
	has_many :comments
end
