class EmployeesController < ApplicationController

@depts = Department.where(company_id: @company.id)

end
