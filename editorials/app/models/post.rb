class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :assignment
	has_many :comments

	validates :assignment_id, presence: { :message => "You must choose an assignment tag."}

	def numberofcomments
		self.comments.count
	end
end
