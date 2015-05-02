class User < ActiveRecord::Base
enum role:{grower:0,agronomist:1,x_auditor:5,consultant:8,admin:9}
# after_initialize :set_deafault_role,:if=>new_record?

def set_default_role
	self.role ||=:user
end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



         has_many :groups ,dependent: :destroy
         has_many :registrations
         has_many :pmus
end
