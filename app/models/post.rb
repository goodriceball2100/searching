class Post < ApplicationRecord
  validates :title, :content, :image, presence: true
  belongs_to :user
  mount_uploader :image, ImageUploader
  
  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end
end