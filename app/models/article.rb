class Article < ApplicationRecord
  validates :title, presence: true
	validates :content, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :user, optional: true
  validates :title, length: { maximum: 140 }
  validates :content, length: { maximum: 4000 }

  def subject
    title
  end

  def last_comment
    comments.last
  end

end
