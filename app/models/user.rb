# email: string
# password_digest: string

# has_secure_password -> adds virtual attributes
# password: string -> vurtual
# password_confirmation : string -> virtual 

class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a vaild email" }
end
