class NetPointsController < ApplicationController
  before_action :set_net_point, only: [:show, :edit, :update, :destroy]

  # GET /net_points
  # GET /net_points.json
  def index
    @net_points = NetPoint.all
  end

  # GET /net_points/1
  # GET /net_points/1.json
  def show
  end

  def netmap
  #  render layout: 'netmap'
    @net_points = NetPoint.all
    @markers = []
    @net_points.each do |net_point|
      @markers.push(
      [net_point.latitude, net_point.longitude, net_point.dbm]
      )
    end
  end

  def randomizer
    @net_points = NetPoint.all
    @point = NetPoint.last
    @id = @point.id
      @net_points.each do |net_point|
      @dbm = rand(-110...-75)
      net_type = ['2G', '3G', '4G']
      @lte = net_type[rand(net_type.size)]
      @id += 1
      operators = [[2, 2], [7, 20]]
      @operator_id = operators[rand(operators.size)] 

    signals = NetPoint.create(id: @id, latitude: net_point.latitude, longitude: net_point.longitude, dbm: @dbm, asu: net_point.asu, mcc: net_point.mcc, operator_id: @operator_id[0], mnc: @operator_id[1], net_type: @lte, user_id: 1 )  
    end
    redirect_to root_path
  end

  def heatmap
    @net_points = NetPoint.all
    @markers = []
    @net_points.each do |net_point|
      @markers.push(
        [net_point.latitude, net_point.longitude, net_point.dbm + 110]
      )
    end
  
  end

  def direction
    @net_points = NetPoint.all
    @markers = []
    @net_points.each do |net_point|
      @markers.push(
        [net_point.latitude, net_point.longitude, net_point.dbm + 110]
      )
    end
  end

  # GET /net_points/new
  def new
    @net_point = NetPoint.new
  end

  # GET /net_points/1/edit
  def edit
  end

  # POST /net_points
  # POST /net_points.json
  def create
    @net_point = NetPoint.new(net_point_params)

    respond_to do |format|
      if @net_point.save
        format.html { redirect_to @net_point, notice: 'Net point was successfully created.' }
        format.json { render :show, status: :created, location: @net_point }
      else
        format.html { render :new }
        format.json { render json: @net_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /net_points/1
  # PATCH/PUT /net_points/1.json
  def update
    respond_to do |format|
      if @net_point.update(net_point_params)
        format.html { redirect_to @net_point, notice: 'Net point was successfully updated.' }
        format.json { render :show, status: :ok, location: @net_point }
      else
        format.html { render :edit }
        format.json { render json: @net_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /net_points/1
  # DELETE /net_points/1.json
  def destroy
    @net_point.destroy
    respond_to do |format|
      format.html { redirect_to net_points_url, notice: 'Net point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_net_point
      @net_point = NetPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def net_point_params
      params.require(:net_point).permit(:latitude, :longitude, :dbm, :asu, :mcc, :operator_id, :mnc, :net_type, :user_id)
    end
end
