class Article < ApplicationRecord
  validates :title, presence: true
	validates :content, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :user, optional: true

  def subject
    title
  end

end
