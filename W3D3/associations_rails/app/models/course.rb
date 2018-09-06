# == Schema Information
#
# Table name: courses
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Course < ApplicationRecord
  has_many :enrolled_students,
  through: :enrollments, # one that exist in current class
  source: :student # what you acces wherever that another association is at

  has_many :enrollments,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: "Enrollment"

  belongs_to :prerequisite,
    primary_key: :id,
    optional: true,
    foreign_key: :prereq_id,
    class_name: "Course"

  belongs_to :instructor,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: "User"


end

# t.string "name"
# t.integer "prereq_id"
# t.integer "instructor_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
