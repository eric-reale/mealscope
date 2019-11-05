class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @collections = Collection.where(user: current_user)
  end

  def error
  end


end
