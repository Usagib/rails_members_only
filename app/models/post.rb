# frozen_string_literal: true

# Post model specifications
class Post < ApplicationRecord
  # formats the model attriutes
  validates :title, presence: true, length: { minimum: 3, maximum: 30 }
  validates :content, presence: true, length: { minimum: 10, maximum: 350 }

  # added asociation to user
  belongs_to :user
end
