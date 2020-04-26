class Post < ApplicationRecord
  belongs_to :user

  after_create :send_email


  def send_email
  	UserMailer.new(self.id).new_mail
  end
end
