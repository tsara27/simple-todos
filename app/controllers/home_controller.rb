class HomeController < ApplicationController
  def index
    @home_presenter = HomePresenter.new
    render locals: { listed: @home_presenter.listed,
                     doing: @home_presenter.doing,
                     done: @home_presenter.done }
  end
end
