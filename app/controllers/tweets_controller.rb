class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  def new
    @tweet = Tweet.new
  end
  def create
    message = params[:tweet][:message]
   
    @tweet = Tweet.new(message: message)
    if !@tweet.save then
      render 'new'
      return
    end
    flash[:notice] = 'ツイートしました'
    redirect_to tweets_path
  end
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    flash[:notice] = '削除しました'
    redirect_to tweets_path
  end
  def show
    @tweet = Tweet.find(params[:id])
  end
  def edit
    @tweet = Tweet.find(params[:id])
  end
  def update
    @tweet = Tweet.find(params[:id])
    if !@tweet.update(message: params[:tweet][:message]) then
      render 'edit'
      return
    end
    flash[:notice] = '更新しました'
    redirect_to tweets_path
  end
end 
