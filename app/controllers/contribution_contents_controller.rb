class ContributionContentsController < ApplicationController

def new
  @contribution_content = ContributionContent.new
  @contribution = Contribution.find(params[:issue_id])

end

end
