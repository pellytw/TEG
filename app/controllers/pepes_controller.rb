class PepesController < ApplicationController
  # GET /pepes
  # GET /pepes.json
  def index
    @pepes = Pepe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pepes }
    end
  end

  # GET /pepes/1
  # GET /pepes/1.json
  def show
    @pepe = Pepe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pepe }
    end
  end

  # GET /pepes/new
  # GET /pepes/new.json
  def new
    @pepe = Pepe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pepe }
    end
  end

  # GET /pepes/1/edit
  def edit
    @pepe = Pepe.find(params[:id])
  end

  # POST /pepes
  # POST /pepes.json
  def create
    @pepe = Pepe.new(params[:pepe])

    respond_to do |format|
      if @pepe.save
        format.html { redirect_to @pepe, notice: 'Pepe was successfully created.' }
        format.json { render json: @pepe, status: :created, location: @pepe }
      else
        format.html { render action: "new" }
        format.json { render json: @pepe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pepes/1
  # PUT /pepes/1.json
  def update
    @pepe = Pepe.find(params[:id])

    respond_to do |format|
      if @pepe.update_attributes(params[:pepe])
        format.html { redirect_to @pepe, notice: 'Pepe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pepe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pepes/1
  # DELETE /pepes/1.json
  def destroy
    @pepe = Pepe.find(params[:id])
    @pepe.destroy

    respond_to do |format|
      format.html { redirect_to pepes_url }
      format.json { head :no_content }
    end
  end
end
