class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :mainthreads

  has_one :profile, :dependent => :destroy

after_create :myprofile

def myprofile
    profile = Profile.create!(user_id: self.id, user_name: self.name) # `.create!` will throw an error if this fails, so it's good for debugging
    self.profile = profile
end

end
