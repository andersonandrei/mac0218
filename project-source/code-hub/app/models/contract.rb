class Contract < ApplicationRecord
   belongs_to :project
   belongs_to :programmer
   validates :programmer_id, presence: true, uniqueness: true
   validates :project_id, presence: true, uniqueness: true
   validates :contract_type, presence: true
   validates :contract_description, presence: true
   validates :contract_duration, presence: true
   validates :payment, presence: true
   validates :status, presence: true
end
