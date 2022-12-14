class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
