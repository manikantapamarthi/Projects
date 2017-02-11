class ProjectList < ApplicationRecord
	validates :title, :duration, :description, :roles, presence: true
 	validate :end_date_after_start_date?

 def end_date_after_start_date?
  if enddate < startdate
    errors.add :enddate, "must be after start date"
  end
end


end
