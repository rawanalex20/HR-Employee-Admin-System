require "test_helper"

class EmployeeTest < ActiveSupport::TestCase

  fixtures :employees
  test "save employee" do
    employee = Employee.new
    employee.email = employees(:one).email
    employee.name = employees(:one).name
    employee.job = employees(:one).job
    employee.salary = employees(:one).salary
    employee.employment_status = employees(:one).employment_status

    team = Team.create(name: "team1")
    employee.team_id = team.id

    assert employee.save
  end

  test "shouldn't save employee as invalid email" do
    employee = Employee.new
    employee.email = "employee"
    employee.name = employees(:one).name
    employee.job = employees(:one).job
    employee.salary = employees(:one).salary
    employee.employment_status = employees(:one).employment_status

    assert_not employee.save
  end

  test "shouldn't save employee as invalid name" do
    employee = Employee.new
    employee.email = employees(:one).email
    employee.name = "employee123"
    employee.job = employees(:one).job
    employee.salary = employees(:one).salary
    employee.employment_status = employees(:one).employment_status

    assert_not employee.save
  end

  test "shouldn't save employee because of not null contraint" do
    employee = Employee.new
    employee.email = employees(:one).email
    employee.name = employees(:one).name
    employee.salary = employees(:one).salary
    employee.employment_status = employees(:one).employment_status

    assert_not employee.save
  end

  test "job should be equal job in fixture" do
    employee = Employee.new
    employee.email = employees(:two).email
    employee.name = employees(:two).name
    employee.job = employees(:two).job
    employee.salary = employees(:two).salary
    employee.employment_status = employees(:two).employment_status

    employee.save

    assert_equal(employees(:two).job, Employee.last.job)
  end

end
