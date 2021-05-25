class User < ApplicationRecord

    has_secure_password 
    has_many :employees 
    has_many :offices, through: :employees
    validates :username, presence: true, uniqueness: true 

 def self.create_from_omniauth(auth)
    User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
        u.username = auth['info']['email']
        u.email = auth['info']['email']
        u.password = SecureRandom.hex(16)
        binding.pry
      end 
    end 
end
