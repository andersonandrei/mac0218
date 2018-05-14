class Project < ApplicationRecord
   belongs_to :user
   has_many :contracts
   has_many :programmers, :through => :contracts
end
