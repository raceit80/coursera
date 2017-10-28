class Profile < ActiveRecord::Base
  belongs_to :user

  validate :name_is_null
  validates :gender, inclusion: ["male", "female"]
  validate :male_first_name_is_sue

  def name_is_null
  	if first_name.nil? && last_name.nil?
  		errors.add(:base, "At least firstname or lastname is required")
  	end
  end

  def male_first_name_is_sue
  	if gender.eql?("male") && first_name.eql?("Sue")
  		errors.add(:base, "Sue cannot be the first name of a Male")
  	end
  end

	def self.get_all_profiles(min_birth_year, max_birth_year)
  		Profile.where("birth_year BETWEEN :min_birth_year AND :max_birth_year", min_birth_year: min_birth_year, max_birth_year: max_birth_year).order(birth_year: :asc)
  	end
end
