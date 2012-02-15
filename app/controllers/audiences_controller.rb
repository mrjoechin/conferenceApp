class AudiencesController < ApplicationController
  # GET /audiences
  # GET /audiences.json
  def index
    @audiences = Audience.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @audiences }
    end
  end

  # GET /audiences/1
  # GET /audiences/1.json
  def show
    @audience = Audience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @audience }
    end
  end

  # GET /audiences/new
  # GET /audiences/new.json
  def new
    @audience = Audience.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @audience }
    end
  end

  # GET /audiences/1/edit
  def edit
    @audience = Audience.find(params[:id])
  end

  # POST /audiences
  # POST /audiences.json
  def create
    @audience = Audience.new(params[:audience])

    respond_to do |format|
      if @audience.save
        format.html { redirect_to @audience, notice: 'Audience was successfully created.' }
        format.json { render json: @audience, status: :created, location: @audience }
      else
        format.html { render action: "new" }
        format.json { render json: @audience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /audiences/1
  # PUT /audiences/1.json
  def update
    @audience = Audience.find(params[:id])

    respond_to do |format|
      if @audience.update_attributes(params[:audience])
        format.html { redirect_to @audience, notice: 'Audience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @audience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audiences/1
  # DELETE /audiences/1.json
  def destroy
    @audience = Audience.find(params[:id])
    @audience.destroy

    respond_to do |format|
      format.html { redirect_to audiences_url }
      format.json { head :no_content }
    end
  end
end
