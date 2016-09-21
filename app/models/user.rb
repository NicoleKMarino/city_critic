class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true, if: "uid.nil?", on: :create
  validates :email, presence: true, if: "uid.nil?", on: :create
  validates :full_name,presence: true, if: "uid.nil?", on: :create
  validates :city, presence: true, if: "uid.nil?", on: :create
  validates :state, presence: true, if: "uid.nil?", on: :create
  has_many :comments

  def self.from_omniauth(auth_info)
  where(uid: auth_info[:uid]).first_or_create do |new_user|
    new_user.uid = auth_info.uid
    new_user.email = auth_info.extra.raw_info.email
    new_user.username = auth_info.extra.raw_info.name
    new_user.full_name = auth_info.extra.raw_info.name
    new_user.oauth_token     = auth_info.credentials.token
    new_user.password_digest = auth_info.credentials.token
    end
  end


  def date_registered
    created_at.strftime("%m/%d/%Y")
  end

end
