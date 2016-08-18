class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:twitter]

  has_many :games

  def self.from_omniauth(auth)
    password = SecureRandom.hex(10)
    if user = User.find_by(provider: auth.provider, uid: auth.uid)
      return user 
    else
      User.create do |u|
        u.provider = auth.provider
        u.uid = auth.uid
        u.email = "#{auth.info.nickname}@twitter.com"
        u.password = password
        u.password_confirmation = password
      end
    end
  end
end
