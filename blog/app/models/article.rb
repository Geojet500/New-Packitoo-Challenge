class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :ratings

  validates :title, :text, presence: true,
    length: { minimum: 5 }
  

end
