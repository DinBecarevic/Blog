class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :body
  has_many :comments, dependent: :destroy
  scope :published, -> { where(published_at: nil).or(where("published_at <= ?", DateTime.now)) }
  # en bug je da je timezona UTC +00:00 oz. GMT oz. Greenwich Mean Time in mormo objave dejansko 1 uro prej objaviti aš ka mislim
  has_rich_text :body
end