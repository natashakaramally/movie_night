class MoviesController < ApplicationController

  def destroy
    movie = Movie.find_by(id: params["id"])
    if movie != nil
      movie.delete
    end
    redirect_to "/movies"
  end

  def create
    m = Movie.new
    m.title = params["title"]
    m.year = params["year"]
    m.poster_url = params["poster_url"]
    m.save
    redirect_to "/movies"
  end

  def update
    m = Movie.find_by(id: params["id"])
    m.title = params["title"]
    m.year = params["year"]
    m.poster_url = params["poster_url"]
    m.director_id = params["director_id"]
    m.save
    redirect_to "/movies/#{m.id}"
  end

end
