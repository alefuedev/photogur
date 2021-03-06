class Picture < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :title, length: { minimum: 3 }
  validates :title, length: { maximum: 20 }
  validates :artist, presence: true
  validates :artist, length: { maximum: 20 }
  validates :url, presence: true
  validates :url, uniqueness: true
  validates :url, url: true

  def self.newest_first
    Picture.order('created_at DESC')
  end

  def self.most_recent_three
    Picture.newest_first.limit(3)
  end

  def self.created_before(time)
    Picture.where('created_at > ?', time)
  end
end
