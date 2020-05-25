class User < ApplicationRecord
    has_many :commercials
    has_secure_password

    
end
