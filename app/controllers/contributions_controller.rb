class ContributionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create]

  def new
     @issue = Issue.new
  end

  def create
  end

  def destroy
  end
end
