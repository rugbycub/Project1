class PagesController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :controller => 'dashboard', :action => 'index'
    end
  end

  def how_it_works
  end

  def get_rewarded
  end

  def support
  end

  def about
  end

  def fine_print
  end

  def for_bars
  end
end
