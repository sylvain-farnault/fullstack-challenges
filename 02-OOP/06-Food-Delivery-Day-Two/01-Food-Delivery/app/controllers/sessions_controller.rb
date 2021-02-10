require_relative '../views/sessions_view'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
  end

  def login
    # ask user for username
    username = SessionsView.ask_for("username", "to_s")
    # ask user for password
    pwd = SessionsView.ask_for_password
    # get emplpoyee instance
    employee = @employee_repository.find_by_username(username)
    # check is credentials are correct
    # return employee instance
    return employee if employee&.password == password
    SessionsView.authen_error
  end

  def logout
    nil
  end

end
