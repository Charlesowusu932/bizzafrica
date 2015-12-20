class Category < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 5, maximum: 12}
  validates :summary, presence: true, length: {minimum: 15, maximum: 100}
  has_many :post_categories, dependent: :destroy
  has_many :posts, through: :post_categories
end
