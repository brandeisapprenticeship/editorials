class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post

	after_save :increment_comments

	def increment_comments
		@post = self.post
		num_comments = @post.number_of_comments
		@post.update(number_of_comments: num_comments + 1)
	end
end
