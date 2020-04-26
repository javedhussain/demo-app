class UserMailer < ApplicationMailer

	def new_mail(post_id)
		@post = Post.find(post_id)
		mail(to: @post.user.email, subject: 'Welcome to My Awesome Site')
	end
end
