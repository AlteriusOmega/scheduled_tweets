# email:string
# password_digest:string
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord # Inheriting from ApplicationRecord class so we get those methods. This itself is a subclass of ActiveRecord::Base which is the ORM for Ruby
    # Below will use the password_digest column in the database and it's going to add a password and confirmation to our user. Thes are virutal attributes that don't get saved to the database. When users submit a password it will be encrypted with bcrypt then saved in the database
    has_secure_password 
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Please enter a valid email address"} # Basically the same as required
    
end
