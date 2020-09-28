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
    @feed_items = current_user.filter_feed(Time.parse(params[:date]), params[:filter_type]).paginate(page: params[:page])
    flash[:success] = "Feed filtered!"
    render 'feed_filtered'
  end

  def about
  end

  def contact
  end
  
end
