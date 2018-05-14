class Programmer < ApplicationRecord
   belongs_to :user
   has_many :contracts
   has_many :projects, :through => :contracts
   validates :name, presence: true, length: {minimum: 3}
   validates :language, presence: true
   validates :expertise_lvl, presence: true, numericality: {greater_than: 0, less_than: 10}
end