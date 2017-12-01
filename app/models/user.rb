class User < ApplicationRecord
    validates_presence_of :username, :email, :password_digest, :access_token
    validates_uniqueness_of :username, :email, :access_token
    has_secure_password
end
