class HomeController < ApplicationController

  def index
    @listed = Todo.where(status: "listed")
  end

  def method_name
    
  end
end
