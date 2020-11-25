class User < ApplicationRecord
     has_many :tweets, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :like_tweets, through: :likes, source: :tweet    
    
    validates :uid, presence: true, uniqueness: :true
    #validates :pass, presence: true    
    validates :password, presence: true, confirmation: true
    
    attr_accessor :password, :password_confirmation
    
    def password=(val)
        if val.present?
            self.pass = BCrypt::Password.create(val)
        end 
        @password = val
    end 
    
    def self.authenticate(uid, pass)
        user = find_by(uid: uid)
        if user and BCrypt::Password.new(user.pass) == pass
            true
        else
            false
        end
    end
end
