class Course < ApplicationRecord
  
  has_many :enrollments,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: "Enrollment"
    
  belongs_to :prerequisite,
    primary_key: :id,
    foreign_key: :prereq_id,
    class_name: "Prerequisite"
    
  belongs_to :instructors,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: "Instructor"
  
  has_many :enrolled_students,
   through: :enrollments, # one that exist in current class
   source: :student # what you acces wherever that another association is at 
   
end

# t.string "name"
# t.integer "prereq_id"
# t.integer "instructor_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false