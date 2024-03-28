class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Include default devise modules. Others available are:

  enum role: %i[user moderator admin]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end

  has_many :news, foreign_key: :user_id, class_name: 'News', dependent: :destroy
  has_many :clubs, foreign_key: :user_id, class_name: 'Club', dependent: :destroy
  has_many :adverts, foreign_key: :user_id, class_name: 'Advert', dependent: :destroy
  has_many :fixtures, foreign_key: :user_id, class_name: 'Fixture', dependent: :destroy
end
