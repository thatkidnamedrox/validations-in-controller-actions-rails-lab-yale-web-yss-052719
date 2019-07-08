class Post < ActiveRecord::Base
  validates :title, presence: true
  validate :category_options

  def category_options
    options = ["fiction", "non-fiction"]
    if !options.include?(category)
      errors.add(:category, "must be either fiction or non-fiction")
    end
  end
end
