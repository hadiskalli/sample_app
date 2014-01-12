class User < ActiveRecord::Base
	has_secure_password
	before_save { self.email = self.email.downcase }

	validates :name, presence: true, length: { maximum:50 }
	VALIDATE_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALIDATE_EMAIL_REGEX },
				  uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6 }
end