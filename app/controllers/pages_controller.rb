class PagesController < ApplicationController
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
