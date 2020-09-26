class ContributionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create]

  def new
    @contribution = Contribution.new
    @issue = Issue.find(params[:issue_id])
  end

  def create
  end

  def destroy
  end
end
