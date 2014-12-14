class Category < ActiveRecord::Base
  has_many :posts

  validates :name, presence: true

  def to_s
    name
  end
end
