class Prerequisite < ApplicationRecord
  
  has_many :courses,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: "Course"
end