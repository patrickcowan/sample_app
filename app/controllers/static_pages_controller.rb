class StaticPagesController < ApplicationController
  def home
    @relationship = current_user.relationships.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end

  def prog
  end

  def classes
  end
end
