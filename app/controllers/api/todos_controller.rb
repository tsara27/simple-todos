module API
  class TodosController < ApiController
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

    def destroy
      todo = Todo.find(params[:id])
      todo.destroy
      render json: {}, status: 204
    end

    def destroy_all
      todo = Todo.where(status: params[:status])
      todo.destroy
      render json: {}, status: 204
    end

    private

    def todo_params
      params.require(:todo).permit(:text).merge(status: params[:status])
    end
  end
end
