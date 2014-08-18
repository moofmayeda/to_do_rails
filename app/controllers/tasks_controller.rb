class TasksController <ApplicationController
  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
    @task = Task.new
  end

end
