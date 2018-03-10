class ReviewsController < ApplicationController

  def index

  end

  def show

  end

  def destroy

  end

  def new

  end

  def create
    review = Review.new
    review.movie_id = params["movie_id"]
    x = params["movie_id"]
    review.rating = params["rating"]
    review.content = params["content"]
    review.save
    redirect_to "/movies/#{x}"
  end

  def edit

  end

  def update

  end

end
