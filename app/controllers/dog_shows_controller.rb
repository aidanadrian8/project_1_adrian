class DogShowsController < ApplicationController
  before_action :set_dog_show, only: %i[ show edit update destroy ]

  # GET /dog_shows or /dog_shows.json
  def index
    @dog_shows = DogShow.all
  end

  # GET /dog_shows/1 or /dog_shows/1.json
  def show
  end

  # GET /dog_shows/new
  def new
    @dog_show = DogShow.new
  end

  # GET /dog_shows/1/edit
  def edit
  end

  # POST /dog_shows or /dog_shows.json
  def create
    @dog_show = DogShow.new(dog_show_params)

    respond_to do |format|
      if @dog_show.save
        format.html { redirect_to dog_show_url(@dog_show), notice: "Dog show was successfully created." }
        format.json { render :show, status: :created, location: @dog_show }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dog_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dog_shows/1 or /dog_shows/1.json
  def update
    respond_to do |format|
      if @dog_show.update(dog_show_params)
        format.html { redirect_to dog_show_url(@dog_show), notice: "Dog show was successfully updated." }
        format.json { render :show, status: :ok, location: @dog_show }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dog_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog_shows/1 or /dog_shows/1.json
  def destroy
    @dog_show.destroy

    respond_to do |format|
      format.html { redirect_to dog_shows_url, notice: "Dog show was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_show
      @dog_show = DogShow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dog_show_params
      params.require(:dog_show).permit(:name, :start_time, :end_time, :location, :number_of_seats)
    end
end
