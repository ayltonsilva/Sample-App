class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page]) 
    end
  end

  def help
  end

  def date_filter
    @feed_items = current_user.filter_feed(params[:date], params[:filter_type]).paginate(page: params[:page])
    flash[:success] = "Feed filtered!"
    redirect_to root_url
  end

  def about
  end

  def contact
  end
  
end
