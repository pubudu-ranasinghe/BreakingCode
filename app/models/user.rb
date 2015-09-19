class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  has_many :posts

  acts_as_voter

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      # user.first_name = auth.info.first_name   # assuming the user model has a name
      # user.last_name = auth.info.last_name   # assuming the user model has a name
      # user.location = auth.info.location # assuming the user model has an image
    end
  end
end
