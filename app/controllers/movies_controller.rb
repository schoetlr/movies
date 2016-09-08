class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:success] = "Movie successfully created"
      redirect_to movies_path
    else
      flash[:error] = "Could not create movie"
      render :new
    end
  end

  def index
    @movies = Movie.order(created_at: "desc")
  end

  def show
  end

  def edit
  end

  def movie_params
    params.require(:movie).permit(:name, :description)
  end
end
