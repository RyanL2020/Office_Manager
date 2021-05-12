class User < ApplicationRecord

    has_secure_password 
    has_many :employees 
    has_many :offices, through: :employees
end
