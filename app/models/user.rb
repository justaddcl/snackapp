class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_secure_password
  has_many :assignments
  has_many :discipleship_communities
  has_many :small_groups
  has_many :user_roles

  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }

  # returns the has digest of the given string
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
