class Meal < ActiveRecord::Base
	has_many :comments
end
