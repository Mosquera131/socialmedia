class PostCountriesController < ApplicationController
  before_action :set_post_country, only: %i[ show edit update destroy ]

  # GET /post_countries or /post_countries.json
  def index
    @post_countries = PostCountry.all
  end

  # GET /post_countries/1 or /post_countries/1.json
  def show
  @post_country = PostCountry.find(params[:id])
  end

  # GET /post_countries/new
  def new
    @post_country = PostCountry.new
  end

  # GET /post_countries/1/edit
  def edit
  end

  # POST /post_countries or /post_countries.json
  def create
    @post_country = PostCountry.new(post_country_params)

    respond_to do |format|
      if @post_country.save
        format.html { redirect_to @post_country, notice: "Post country was successfully created." }
        format.json { render :show, status: :created, location: @post_country }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_countries/1 or /post_countries/1.json
  def update
    respond_to do |format|
      if @post_country.update(post_country_params)
        format.html { redirect_to @post_country, notice: "Post country was successfully updated." }
        format.json { render :show, status: :ok, location: @post_country }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_countries/1 or /post_countries/1.json
  def destroy
    @post_country.destroy!

    respond_to do |format|
      format.html { redirect_to post_countries_path, status: :see_other, notice: "Post country was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_country
      @post_country = PostCountry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_country_params
      params.require(:post_country).permit(:country_name, :favorite_food, :favorite_excursion, :date_of_arrival, :date_of_departure, :comment, :photo)
    end
end
