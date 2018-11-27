class MyComicsController < ApplicationController
  before_action :set_my_comic, only: [:show, :update, :destroy]

  # GET /my_comics
  def index
    @my_comics = MyComic.all

    render json: @my_comics
  end

  # GET /my_comics/1
  def show
    render json: @my_comic
  end

  # POST /my_comics
  def create
    @my_comic = MyComic.new(my_comic_params)

    if @my_comic.save
      render json: @my_comic, status: :created, location: @my_comic
    else
      render json: @my_comic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_comics/1
  def update
    if @my_comic.update(my_comic_params)
      render json: @my_comic
    else
      render json: @my_comic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_comics/1
  def destroy
    @my_comic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_comic
      @my_comic = MyComic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_comic_params
      params.require(:my_comic).permit(:user_id_id, :comic_id_id)
    end
end
