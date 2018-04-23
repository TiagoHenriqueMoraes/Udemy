class Contact < ApplicationRecord
  belongs_to :kind
  has_one :adress, dependent: :destroy

  accepts_nested_attributes_for :adress
end
