class BuyingsController < ApplicationController
  before_action :set_buying, only: [:show, :edit, :update, :destroy]

  # GET /buyings
  # GET /buyings.json
  def index
    @buyings = Buying.all
  end

  # GET /buyings/1
  # GET /buyings/1.json
  def show
  end

  # GET /buyings/new
  def new
    @buying = Buying.new
  end

  # GET /buyings/1/edit
  def edit
  end

  # POST /buyings
  # POST /buyings.json
  def create
    @buying = Buying.new(buying_params)

    respond_to do |format|
      if @buying.save
        format.html { redirect_to @buying, notice: 'Buying was successfully created.' }
        format.json { render :show, status: :created, location: @buying }
      else
        format.html { render :new }
        format.json { render json: @buying.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyings/1
  # PATCH/PUT /buyings/1.json
  def update
    respond_to do |format|
      if @buying.update(buying_params)
        format.html { redirect_to @buying, notice: 'Buying was successfully updated.' }
        format.json { render :show, status: :ok, location: @buying }
      else
        format.html { render :edit }
        format.json { render json: @buying.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyings/1
  # DELETE /buyings/1.json
  def destroy
    @buying.destroy
    respond_to do |format|
      format.html { redirect_to buyings_url, notice: 'Buying was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buying
      @buying = Buying.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buying_params
      params.require(:buying).permit(:name, :price)
    end
end
