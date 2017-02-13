class User < ActiveRecord::Base
  has_many :wikis
  before_save { self.role ||= :member }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_initialize :default_role

  enum role: [:member, :premium, :admin]

  def default_role
    self.role ||= :member
  end
end
