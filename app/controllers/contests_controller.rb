class ContestsController < ApplicationController
  def index
    @contests = Contest.all
  end

  def show
    @contest = Contest.find_by(id: params[:id])
  end
end