class TipoTransportesController < ApplicationController
  # GET /tipo_transportes
  # GET /tipo_transportes.json
  def index
    @tipo_transportes = TipoTransporte.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_transportes }
    end
  end

  # GET /tipo_transportes/1
  # GET /tipo_transportes/1.json
  def show
    @tipo_transporte = TipoTransporte.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_transporte }
    end
  end

  # GET /tipo_transportes/new
  # GET /tipo_transportes/new.json
  def new
    @tipo_transporte = TipoTransporte.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_transporte }
    end
  end

  # GET /tipo_transportes/1/edit
  def edit
    @tipo_transporte = TipoTransporte.find(params[:id])
  end

  # POST /tipo_transportes
  # POST /tipo_transportes.json
  def create
    @tipo_transporte = TipoTransporte.new(params[:tipo_transporte])

    respond_to do |format|
      if @tipo_transporte.save
        format.html { redirect_to @tipo_transporte, notice: 'Tipo transporte was successfully created.' }
        format.json { render json: @tipo_transporte, status: :created, location: @tipo_transporte }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_transporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_transportes/1
  # PUT /tipo_transportes/1.json
  def update
    @tipo_transporte = TipoTransporte.find(params[:id])

    respond_to do |format|
      if @tipo_transporte.update_attributes(params[:tipo_transporte])
        format.html { redirect_to @tipo_transporte, notice: 'Tipo transporte was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_transporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_transportes/1
  # DELETE /tipo_transportes/1.json
  def destroy
    @tipo_transporte = TipoTransporte.find(params[:id])
    @tipo_transporte.destroy

    respond_to do |format|
      format.html { redirect_to tipo_transportes_url }
      format.json { head :no_content }
    end
  end
end
