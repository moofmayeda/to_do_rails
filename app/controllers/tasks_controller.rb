class TasksController <ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
    render('tasks/index.html.erb')
  end

  def create
    @tasks = Task.all
    @task = Task.new(params[:task])
    if @task.save
      render('tasks/success.html.erb')
    else
      render('tasks/index.html.erb')
    end
  end

  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(params[:task])
      render('/tasks/success.html.erb')
    else
      render('/tasks/show.html.erb')
    end
  end

  def destroy
    @tasks = Task.all
    @task = Task.find(params[:id])
    @task.destroy
    render('/tasks/index.html.erb')
  end
end
