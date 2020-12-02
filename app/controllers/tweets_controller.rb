class TweetsController < ApplicationController
  def index
    @tweet = Tweet.all
  end
  def new
    @tweet = Tweet.new
  end
  def create
   # message = params[:tweet][:message]
   # date = Time.current
    #@tweet = Tweet.new(message: message, tdate: date)
    #if !@tweet.save then
     # render 'new'
      #return
    #end
    flash[:notice] = 'ツイートしました'
    redirect_to '/'
  end
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    flash[:notice] = '削除しました'
    redirect_to '/'
  end
  def show
    @tweet = Tweet.find(params[:id])
  end
  def edit
    @tweet = Tweet.find(params[:id])
  end
end 
