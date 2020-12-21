class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    message = params[:tweet][:message]
    file = params[:tweet][:file].read
    
    @tweet = Tweet.new(message: message, file: file)
    @tweet.save
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
  

  def get_audio
　  @tweet = Tweet.find(params[:id])
　  send_file @tweet.file, type: 'video/webm'
  end 
  
end 

  

