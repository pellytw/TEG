class EmpresaTransportesController < ApplicationController
  # GET /empresa_transportes
  # GET /empresa_transportes.json
  def index
    @empresa_transportes = EmpresaTransporte.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @empresa_transportes }
    end
  end

  # GET /empresa_transportes/1
  # GET /empresa_transportes/1.json
  def show
    @empresa_transporte = EmpresaTransporte.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @empresa_transporte }
    end
  end

  # GET /empresa_transportes/new
  # GET /empresa_transportes/new.json
  def new
    @empresa_transporte = EmpresaTransporte.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @empresa_transporte }
    end
  end

  # GET /empresa_transportes/1/edit
  def edit
    @empresa_transporte = EmpresaTransporte.find(params[:id])
  end

  # POST /empresa_transportes
  # POST /empresa_transportes.json
  def create
    @empresa_transporte = EmpresaTransporte.new(params[:empresa_transporte])

    respond_to do |format|
      if @empresa_transporte.save
        format.html { redirect_to @empresa_transporte, notice: 'Empresa transporte creada correctamente.' }
        format.json { render json: @empresa_transporte, status: :created, location: @empresa_transporte }
      else
        format.html { render action: "new" }
        format.json { render json: @empresa_transporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /empresa_transportes/1
  # PUT /empresa_transportes/1.json
  def update
    @empresa_transporte = EmpresaTransporte.find(params[:id])

    respond_to do |format|
      if @empresa_transporte.update_attributes(params[:empresa_transporte])
        format.html { redirect_to @empresa_transporte, notice: 'Empresa transporte actualizada correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @empresa_transporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresa_transportes/1
  # DELETE /empresa_transportes/1.json
  def destroy
    @empresa_transporte = EmpresaTransporte.find(params[:id])
    @empresa_transporte.destroy

    respond_to do |format|
      format.html { redirect_to empresa_transportes_url }
      format.json { head :no_content }
    end
  end
end
