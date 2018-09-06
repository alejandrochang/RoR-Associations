# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  
  has_many :enrollments,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: "Enrollment"
  
  has_many :enrolled_courses,
    through: :enrollments,
    source: :course
  
end

# create_table "users", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
