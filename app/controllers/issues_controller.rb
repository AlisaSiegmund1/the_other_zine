class IssuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show]


  def index
    @issues = Issue.all
  end

  def show
    set_issue
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      redirect_to issue_path(@issue)
    else
      render :new
    end

  end

  def edit
  end

  def delete
  end

  private

  def set_issue
    @issue = Issue.find(params[:id])
  end

   def issue_params
    params.require(:issue).permit(:title, :short_description, :photo)
  end

end
