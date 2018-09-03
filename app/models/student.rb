class Student < ApplicationRecord
	belongs_to :bukatu
	validates :name,presence: true
	validates :grade,presence: true
	validates :content,presence: true

end
