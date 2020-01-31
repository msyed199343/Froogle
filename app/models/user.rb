# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  session_token   :string           not null
#

class User < ApplicationRecord
    validates :username, :password_digest, :session_token, presence: true
    validates :username, :session_token, uniqueness: true 
    validates :password, length: {minimum: 6, allow_nil: true}

    attr_reader :password
    after_initialize :ensure_session_token
    #write three token methods 
        #1 is #ensure_session_token 
        #2 is #reset_session_token 
        #3 is #generate_Session_token
    #password methods are 
        #1#password= setter method to set password_digest
        #2#is_Password to check is the password user entered is the same as password_digest
    #class method
        #Find_by_credentials tries to find user by username and password is checked with #is_Password method for match

        def self.find_by_credentials(username, password)
            user = User.find_by(username: username)
            return nil if user.nil?
            user.is_password?(password) ? user : nil
        end

        def reset_session_token
            self.session_token = SecureRandom.base64(16)
            self.save!
            self.session_token
        end


        def password=(password)
            @password = password
            self.password_digest = BCrypt::Password.create(password)
        end
            
        def is_password?(password)
            BCrypt::Password.new(self.password_digest).is_password?(password)
        end

    private
    def ensure_session_token
        self.session_token ||= SecureRandom.base64(16)
    end
end
