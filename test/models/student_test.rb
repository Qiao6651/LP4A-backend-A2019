require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "should have the necessary required validators" do
    post = Student.new
    assert_not student.valid?
    assert_equal [:name, :first_name], post.errors.keys

    student.name = "Name"
    student.first_name = "FirstName"
    assert student.valid?
  end
end
