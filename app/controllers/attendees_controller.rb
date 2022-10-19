class AttendeesController < ApplicationController
      # GET /attendees or /attendees.json
  def index
    @attendees = Attendee.all
  end

  # GET /attendees/1 or /attendees/1.json
  def show
  end

  # GET /attendees/new
  def new
    @attendee = Attendee.new
    @dog_show_id = params[:dog_show_id]
  end

  # GET /attendees/1/edit
  def edit
  end
  # POST /attendees or /attendees.json
  def create
    @attendee = Attendee.new(attendee_params)
    @dog_show_id = attendee_params[:dog_show_id]
    dog_show = DogShow.find(@dog_show_id)
    dog_show.number_of_seats = dog_show.number_of_seats - 1
    dog_show.save
    respond_to do |format|
      if @attendee.save

        format.html { redirect_back(fallback_location: root_path, notice: "Ticket was succesfully purchased!" )}
        format.json { render :show, status: :created, location: @attendee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendees/1 or /attendees/1.json
  def update
    respond_to do |format|
      if @attendee.update(attendee_params)
        format.html { redirect_back(fallback_location: root_path, notice: "Attendee was successfully updated." )}
        format.json { render :show, status: :ok, location: @attendee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendees/1 or /attendees/1.json
  def destroy
    @attendee.destroy

    respond_to do |format|
      format.html { redirect_to attendees_url, notice: "Attendee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendee
      @attendee = Attendee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attendee_params
      params.require(:attendee).permit(:user_id, :dog_show_id)
    end
end
