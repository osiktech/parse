class Subproject < ApplicationRecord
  belongs_to :project

  belongs_to :client, class_name: 'Client', optional: true
  belongs_to :owner, class_name: 'Client', optional: true
  belongs_to :builder, class_name: 'Client', optional: true

  accepts_nested_attributes_for :client, reject_if: :all_blank
  accepts_nested_attributes_for :owner, reject_if: :all_blank
  accepts_nested_attributes_for :builder, reject_if: :all_blank

  validates :subproject_name, presence: true
  validate :client_presence_check
  validate :owner_presence_check
  validate :builder_presence_check

  private
  private

  def client_presence_check
    if client_id.blank? && (client_attributes_blank?)
      errors.add(:client, "must be selected or a new client must be provided")
    end
  end

  def owner_presence_check
    if owner_id.blank? && (owner_attributes_blank?)
      errors.add(:owner, "must be selected or a new owner must be provided")
    end
  end

  def builder_presence_check
    if builder_id.blank? && (builder_attributes_blank?)
      errors.add(:builder, "must be selected or a new builder must be provided")
    end
  end

  def client_attributes_blank?
    return true if client.nil?
    client.attributes.except("id", "created_at", "updated_at").values.all?(&:blank?)
  end

  def owner_attributes_blank?
    return true if client.nil?
    owner_attributes.except("id", "created_at", "updated_at").values.all?(&:blank?)
  end

  def builder_attributes_blank?
    return true if client.nil?
    builder_attributes.except("id", "created_at", "updated_at").values.all?(&:blank?)
  end

end