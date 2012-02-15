class UserlevelsController < ApplicationController
  # GET /userlevels
  # GET /userlevels.json
  def index
    @userlevels = Userlevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userlevels }
    end
  end

  # GET /userlevels/1
  # GET /userlevels/1.json
  def show
    @userlevel = Userlevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userlevel }
    end
  end

  # GET /userlevels/new
  # GET /userlevels/new.json
  def new
    @userlevel = Userlevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userlevel }
    end
  end

  # GET /userlevels/1/edit
  def edit
    @userlevel = Userlevel.find(params[:id])
  end

  # POST /userlevels
  # POST /userlevels.json
  def create
    @userlevel = Userlevel.new(params[:userlevel])

    respond_to do |format|
      if @userlevel.save
        format.html { redirect_to @userlevel, notice: 'Userlevel was successfully created.' }
        format.json { render json: @userlevel, status: :created, location: @userlevel }
      else
        format.html { render action: "new" }
        format.json { render json: @userlevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userlevels/1
  # PUT /userlevels/1.json
  def update
    @userlevel = Userlevel.find(params[:id])

    respond_to do |format|
      if @userlevel.update_attributes(params[:userlevel])
        format.html { redirect_to @userlevel, notice: 'Userlevel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userlevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userlevels/1
  # DELETE /userlevels/1.json
  def destroy
    @userlevel = Userlevel.find(params[:id])
    @userlevel.destroy

    respond_to do |format|
      format.html { redirect_to userlevels_url }
      format.json { head :no_content }
    end
  end
end
