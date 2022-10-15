class FavoritesController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    favorite = current_user.favorites.new(tweet_id: tweet.id)
    favorite.save
    redirect_to tweet_path(tweet)
  end
  
  def destroy
    @tweet_favorite = Favorite.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    @tweet_favorite.destroy
    redirect_to tweet_path(params[:tweet_id]) 
  end
end
