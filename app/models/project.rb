class Project < ApplicationRecord
  belongs_to :user
  validates :project, presence: true, length: {minimum: 3, maximum: 20}
end
