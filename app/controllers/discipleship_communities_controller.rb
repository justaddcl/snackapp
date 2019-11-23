class DiscipleshipCommunitiesController < ApplicationController
  before_action :admin_user
  before_action :set_discipleship_community, only: [:show, :edit, :update, :destroy]

  # GET /discipleship_communities
  # GET /discipleship_communities.json
  def index
    @discipleship_communities = DiscipleshipCommunity.all
  end

  # GET /discipleship_communities/1
  # GET /discipleship_communities/1.json
  def show
  end

  # GET /discipleship_communities/new
  def new
    @discipleship_community = DiscipleshipCommunity.new
  end

  # GET /discipleship_communities/1/edit
  def edit
  end

  # POST /discipleship_communities
  # POST /discipleship_communities.json
  def create
    @discipleship_community = DiscipleshipCommunity.new(discipleship_community_params)

    respond_to do |format|
      if @discipleship_community.save
        format.html { redirect_to @discipleship_community, notice: 'Discipleship community was successfully created.' }
        format.json { render :show, status: :created, location: @discipleship_community }
      else
        format.html { render :new }
        format.json { render json: @discipleship_community.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discipleship_communities/1
  # PATCH/PUT /discipleship_communities/1.json
  def update
    respond_to do |format|
      if @discipleship_community.update(discipleship_community_params)
        format.html { redirect_to @discipleship_community, notice: 'Discipleship community was successfully updated.' }
        format.json { render :show, status: :ok, location: @discipleship_community }
      else
        format.html { render :edit }
        format.json { render json: @discipleship_community.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discipleship_communities/1
  # DELETE /discipleship_communities/1.json
  def destroy
    @discipleship_community.destroy
    respond_to do |format|
      format.html { redirect_to discipleship_communities_url, notice: 'Discipleship community was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipleship_community
      @discipleship_community = DiscipleshipCommunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discipleship_community_params
      params.require(:discipleship_community).permit(:user_role_id, :discipleship_community_night)
    end
end
