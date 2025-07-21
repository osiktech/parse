class Client < ApplicationRecord
  has_many :client_subprojects, class_name: 'Subproject', foreign_key: 'client_id'
  has_many :owner_subprojects, class_name: 'Subproject', foreign_key: 'owner_id'
  has_many :builder_subprojects, class_name: 'Subproject', foreign_key: 'builder_id'

  validates :company_name, :firstname, :lastname, presence: true
  # Add other validations as needed

  def referenced_count
    owner_subprojects.count + builder_subprojects.count + client_subprojects.count
  end

  def editable?
    referenced_count <= 1
  end
end