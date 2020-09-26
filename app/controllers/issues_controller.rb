class IssuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show]


  def index
    @publishedIssues = []

     Issue.all.each do |issue|
        @publishedIssues << issue if issue.publish == true
      end
    @issues = @publishedIssues.sort
  end

  def show
    set_issue
    @contribution = Contribution.new
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
    set_issue
  end

  def update
    set_issue
    @issue.update(issue_params)
    redirect_to issue_path(@issue)
  end

  def destroy
    set_issue
    @issue.delete
    redirect_to archive_path
  end

  private

  def set_issue
    @issue = Issue.find(params[:id])
  end

   def issue_params
    params.require(:issue).permit(:title, :short_description, :photo, :publish)
  end

end
