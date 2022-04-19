require 'rails_helper'

RSpec.describe Employee, type: :model do
  context "validate employee input" do 
      
    it "should pass when sending a valid data" do 
       new_employee = Employee.new(email: "employee@gmail.com", name: "employeeA", job: "job 1", salary: 1.5, employment_status: "status")
       expect(new_employee.valid?).to be true
    end

    it "should not pass as invalid email" do 
      new_employee = Employee.new(email: "employee", name: "employeeA", job: "job 1", salary: 1.5, employment_status: "status")
      expect(new_employee.valid?).to be false
    end

    it "should not pass as invalid name" do 
      new_employee = Employee.new(email: "employee@gmail.com", name: "employee123", job: "job 1", salary: 1.5, employment_status: "status")
      expect(new_employee.valid?).to be false
    end

    it "shoould not pass because of not null contraint" do
      new_employee = Employee.new(email: "employee@gmail.com", name: "employee123", salary: 1.5, employment_status: "status")
      expect(new_employee.valid?).to be false
    end

  end

  context "remove employee" do 
      
    it "should remove employee" do 
       employee = Employee.last
       expect(employee.destroy).to be_valid
    end
  end

end
