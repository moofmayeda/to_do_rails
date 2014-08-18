class TasksController <ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
    render('tasks/index.html.erb')
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    render('tasks/success.html.erb')
    # if @task.save
    #   render('tasks/success.html.erb')
    # else
    #   render('tasks/new.html.erb')
    # end
  end
end
