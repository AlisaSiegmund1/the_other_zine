class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :donations, :submissions, :imprint, :privacy_policy, :terms_of_service, :contact]

  def home
    @issue = Issue.last
  end

  def about
  end

  def donations
  end

  def submissions
  end

  def imprint
  end

  def privacy_policy
  end

  def contact
  end

  def terms_of_service
  end


  def cms_issue
  end


  def all_contributions
    @contributions = Contribution.all.sort
  end


  def unapproved_contributions
    @contributions = Contribution.all
  end


end
