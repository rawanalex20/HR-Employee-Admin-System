require "test_helper"

class EmployeeTest < ActiveSupport::TestCase

  #fixtures :employees
  test "save employee" do
    employee = Employee.new(name: "employee 1")
    # employee.email = employees(:one).email
    # employee.name = employees(:one).name
    # employee.job = employees(:one).job
    # employee.salary = employees(:one).salary
    # employee.employment_status = employees(:one).employment_status

    assert_not employee.save
  end

end
