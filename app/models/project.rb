class Project < ApplicationRecord
  has_many :subprojects, inverse_of: :project
  accepts_nested_attributes_for :subprojects, allow_destroy: true, reject_if: :all_blank

  validates :name, presence: true
end