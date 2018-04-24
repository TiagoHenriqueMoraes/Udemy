class Contact < ApplicationRecord
  belongs_to :kind
  has_one :adress, dependent: :destroy
  has_many :phones #, dependent: :destroy

  accepts_nested_attributes_for :adress
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true
end
