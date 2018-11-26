class LentComicsController < ApplicationController
  before_action :set_lent_comic, only: [:show, :update, :destroy]

  # GET /lent_comics
  def index
    @lent_comics = LentComic.all

    render json: @lent_comics
  end

  # GET /lent_comics/1
  def show
    render json: @lent_comic
  end

  # POST /lent_comics
  def create
    @lent_comic = LentComic.new(lent_comic_params)

    if @lent_comic.save
      render json: @lent_comic, status: :created, location: @lent_comic
    else
      render json: @lent_comic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lent_comics/1
  def update
    if @lent_comic.update(lent_comic_params)
      render json: @lent_comic
    else
      render json: @lent_comic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lent_comics/1
  def destroy
    @lent_comic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lent_comic
      @lent_comic = LentComic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lent_comic_params
      params.require(:lent_comic).permit(:comic_id, :friend_id)
    end
end
