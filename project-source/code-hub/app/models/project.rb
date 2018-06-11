class Project < ApplicationRecord
   belongs_to :user
   has_many :contracts
   has_many :programmers, :through => :contracts
   validates :user_id, presence: true
   validates :name, presence: true, length: {minimum: 3}
   validates :language, presence: true
   validates :duration, presence: true
end
