class Post < ActiveRecord::Base
validates :title, presence: true, length: {minimum: 10, maximum: 50}
validates :summary, presence: true, length: {minimum: 30, maximum: 150}
validates :description, presence: true
end
