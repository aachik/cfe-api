class Employee < ActiveRecord::Base
	has_many :subordinates, class_name: "Employee",
							foreign_key: "manager_id"
	belongs_to :manager, class_name: "Employee"
	has_many :colleagues, class_name: "Employee",
							foreign_key: "colleague_id"
	belongs_to :colleague, class_name: "Employee"
end
