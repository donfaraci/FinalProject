class Category < ActiveRecord::Base

	validates :category, :min_temp, :max_temp, presence: true
	validates :min_temp, :numericality => { :greater_than => -50, :less_than_or_equal_to => :max_temp }
	validates :max_temp, :numericality => { :less_than_or_equal_to => 150 }

	has_many :shirts
	belongs_to :user


	def recent_shirts
    shirts.limit(5)
  end

	def self.from_params(category)
    where(category: category).first_or_create
  end

end
