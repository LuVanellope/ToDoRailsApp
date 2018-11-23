class Todo < ApplicationRecord
  validates :description, presence: true, uniqueness: true
  validates :priority, presence: true
end
