class ContributionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create]

  def new
    @contribution = Contribution.new
    set_issue
  end

  def create
    @contribution = Contribution.new(contribution_params)
    set_issue
    @contribution.issue = @issue

    if @contribution.save
      redirect_to issue_path( @issue)
    else
      render :new
    end
  end

  def show
    set_issue
    set_contribution
  end

  def edit
    set_contribution
    set_issue
  end

  def update
    set_issue
    set_contribution
    @contribution.update(contribution_params)
    redirect_to cms_dashboard_path
  end

  def destroy
    @issue = Issue.find(params[:id])
    @contribution = Contribution.find(params[:issue_id])
    set_contribution
    @contribution.delete
    redirect_to all_contributions_path
  end


  private

  def set_issue
    @issue = Issue.find(params[:issue_id])
  end

  def set_contribution
    @contribution = Contribution.find(params[:id])
  end


  def contribution_params
    params.require(:contribution).permit(:con_type, :content, :link, :photo, :published, :approved, :name, :email)

  end

end
