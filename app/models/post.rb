class Post < ActiveRecord::Base
  validates :title, presence: true
  validate :category_fiction_or_non_fiction?
end
