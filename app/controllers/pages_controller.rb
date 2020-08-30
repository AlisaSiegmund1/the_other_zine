class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :donations, :submissions]

  def home
  end

  def about
  end

  def donations
  end

  def submissions
  end


end
