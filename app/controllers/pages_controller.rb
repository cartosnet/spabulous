class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @flats = Flat.all
  end

  def about
  end

  def info
  end

  def contact
  end
end
