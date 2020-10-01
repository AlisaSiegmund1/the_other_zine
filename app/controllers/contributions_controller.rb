class ContributionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create]

  def new
    @contribution = Contribution.new
    @issue = Issue.find(params[:issue_id])
  end

  def create
      @contribution = Contribution.new(contribution_params)
      @issue = Issue.find(params[:issue_id])
      # @issue = Issue.find(params[:issue_id])
    if @contribution.save
      redirect_to issue_path
    else
      render :new
    end

  end

  def destroy
  end


  private

  def contribution_params
    params.require(:contribution).permit(:contribution_type, :contribution_content, :public, :author, :email)

  end

end
