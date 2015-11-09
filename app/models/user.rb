class User < ActiveRecord::Base
    validates :username, presence: true, length: {maximum: 50}
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255}, format: { with: EMAIL_REGEX }, uniqueness: {case_sensitive: false}
    has_secure_password
    validates :password, presence: true, length: {minimum: 6}

    has_attached_file :image
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
