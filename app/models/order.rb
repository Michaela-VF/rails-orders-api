class Order < ApplicationRecord
  # default status added in the migration file

  # downcase status for db consistency
  before_save :normalise_status

  # validations to keep db clean
  validates :total, presence: true
  validates :status, presence: true

  def normalise_status
    self.status = status&.downcase
  end
end
