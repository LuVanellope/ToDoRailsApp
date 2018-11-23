class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    respond_to do |format|
      if @todo.save
        format.html { redirect_to root_path }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(done: true)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end


  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:description, :priority)
  end

end
