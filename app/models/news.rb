class News < ApplicationRecord
  belongs_to :user, class_name: 'User', optional: true
  has_one_attached :image
  # Validations on a model
  validates :type_of_news, presence: true
  validates :header_news, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
