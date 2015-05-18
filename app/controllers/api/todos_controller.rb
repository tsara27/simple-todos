class Api::TodosController < ApiController

  def create
    todo = Todo.create!(todo_params)
    render json: todo.to_json, status: 201
  end

  def update
    todo = Todo.find(params[:id])
    todo.status = params[:status]
    todo.save!
    render json: todo.to_json, status: 200
  end

  private

  def todo_params
    params.require(:todo).permit(:text).merge(status: params[:status])
  end

end
