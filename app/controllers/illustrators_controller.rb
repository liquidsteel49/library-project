class IllustratorsController < ApplicationController
  before_action :set_illustrator, only: [:show, :update, :destroy]

  # GET /illustrators
  def index
    @illustrators = Illustrator.all

    render json: @illustrators
  end

  # GET /illustrators/1
  def show
    render json: @illustrator
  end

  # POST /illustrators
  def create
    @illustrator = Illustrator.new(illustrator_params)

    if @illustrator.save
      render json: @illustrator, status: :created, location: @illustrator
    else
      render json: @illustrator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /illustrators/1
  def update
    if @illustrator.update(illustrator_params)
      render json: @illustrator
    else
      render json: @illustrator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /illustrators/1
  def destroy
    @illustrator.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_illustrator
      @illustrator = Illustrator.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def illustrator_params
      params.require(:illustrator).permit(:first_name, :last_name, :pen_name, :known_for)
    end
end
