class MoviesController < ApplicationController
  add_breadcrumb "Home", :root_path
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @get_api = HTTParty.get('http://www.omdbapi.com/?t=' + @movie.title + '&apikey=' + ENV['MOVIE_DB_API'])
    @api_data = @get_api.parsed_response
    add_breadcrumb "#{@movie.title}", :movie_path
  end

  def new
    @movie = Movie.new
    add_breadcrumb "Add movie", :movies_new_path
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      redirect_to movie_path(@movie.id)
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_path
  end

  private

  def movie_params
    params.require(:movie).permit(:id, :title, :year, :director)
  end
end
