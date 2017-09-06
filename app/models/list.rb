class List < ApplicationRecord
	validates :name, length: { maximum: 140 }, presence: true
	belongs_to :user
	has_many :tasks, dependent: :destroy
end
