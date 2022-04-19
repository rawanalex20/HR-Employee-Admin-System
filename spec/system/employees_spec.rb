require 'rails_helper'

RSpec.describe "Employees", type: :system do
  include Devise::Test::IntegrationHelpers
  before do
    driven_by(:rack_test)

    sign_in User.last

    @employee = Employee.last

  end

  context "create employee" do 
      
    it "should create employee" do
      visit employees_url

      click_on "العربية"

      click_on "Add Employee"
  
      fill_in "Email", with: "employeeA@email.com"
      fill_in "Employment status", with: "status"
      fill_in "Job", with: "job 1"
      fill_in "Name", with: "employeeA"
      fill_in "Salary", with: "2000"
      click_on "Create Employee"
  
      expect(page).to have_text "Employee was successfully created"
    end

    it "should not create employee" do
      visit employees_url

      click_on "Add Employee"
  
      fill_in "Email", with: "employeeA@email.com"
      fill_in "Employment status", with: "status"
      fill_in "Job", with: "job 1"
      fill_in "Name", with: ""
      fill_in "Salary", with: "2000"
      click_on "Create Employee"
  
      expect(page).to have_text "Name can't be blank"
    end

  end

  context "update employee" do
  
    it "should update Employee" do
      
      visit employee_url(@employee)
      click_on "Edit this employee"
  
      fill_in "Name", with: "employeeC"
      click_on "Update Employee"
  
      expect(page).to have_text "Employee was successfully updated"
    end

    it "should throw name can't be blank" do
      
      visit employee_url(@employee)
      click_on "Edit this employee"
  
      fill_in "Name", with: ""
      click_on "Update Employee"
  
      expect(page).to have_text "Name can't be blank"
    end
  end

end
