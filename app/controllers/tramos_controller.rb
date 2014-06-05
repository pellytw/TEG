class TramosController < ApplicationController
  # GET /tramos
  # GET /tramos.json
  def index
    @tramos = Tramo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tramos }
    end
  end

  # GET /tramos/1
  # GET /tramos/1.json
  def show
    @tramo = Tramo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tramo }
    end
  end

  # GET /tramos/new
  # GET /tramos/new.json
  def new
    @tramo = Tramo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tramo }
    end
  end

  # GET /tramos/1/edit
  def edit
    @tramo = Tramo.find(params[:id])
  end

  # POST /tramos
  # POST /tramos.json
  def create
    @tramo = Tramo.new(params[:tramo])

    respond_to do |format|
      if @tramo.save
        format.html { redirect_to @tramo, notice: 'Tramo was successfully created.' }
        format.json { render json: @tramo, status: :created, location: @tramo }
      else
        format.html { render action: "new" }
        format.json { render json: @tramo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tramos/1
  # PUT /tramos/1.json
  def update
    @tramo = Tramo.find(params[:id])

    respond_to do |format|
      if @tramo.update_attributes(params[:tramo])
        format.html { redirect_to @tramo, notice: 'Tramo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tramo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tramos/1
  # DELETE /tramos/1.json
  def destroy
    @tramo = Tramo.find(params[:id])
    @tramo.destroy

    respond_to do |format|
      format.html { redirect_to tramos_url }
      format.json { head :no_content }
    end
  end
end
