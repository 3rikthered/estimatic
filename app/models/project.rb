class Project < ApplicationRecord
  #belongs_to :team
  belongs_to :user
  validates :project, presence: true, length: {minimum: 3, maximum: 20}
  has_many :estimates, dependent: :destroy
  #accepts_nested_attributes_for :team
end
