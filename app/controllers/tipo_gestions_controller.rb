class TipoGestionsController < ApplicationController
  # GET /tipo_gestions
  # GET /tipo_gestions.json
  def index
    @tipo_gestions = TipoGestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_gestions }
    end
  end

  # GET /tipo_gestions/1
  # GET /tipo_gestions/1.json
  def show
    @tipo_gestion = TipoGestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_gestion }
    end
  end

  # GET /tipo_gestions/new
  # GET /tipo_gestions/new.json
  def new
    @tipo_gestion = TipoGestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_gestion }
    end
  end

  # GET /tipo_gestions/1/edit
  def edit
    @tipo_gestion = TipoGestion.find(params[:id])
  end

  # POST /tipo_gestions
  # POST /tipo_gestions.json
  def create
    @tipo_gestion = TipoGestion.new(params[:tipo_gestion])

    respond_to do |format|
      if @tipo_gestion.save
        format.html { redirect_to @tipo_gestion, notice: 'Tipo gestion was successfully created.' }
        format.json { render json: @tipo_gestion, status: :created, location: @tipo_gestion }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_gestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_gestions/1
  # PUT /tipo_gestions/1.json
  def update
    @tipo_gestion = TipoGestion.find(params[:id])

    respond_to do |format|
      if @tipo_gestion.update_attributes(params[:tipo_gestion])
        format.html { redirect_to @tipo_gestion, notice: 'Tipo gestion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_gestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_gestions/1
  # DELETE /tipo_gestions/1.json
  def destroy
    @tipo_gestion = TipoGestion.find(params[:id])
    @tipo_gestion.destroy

    respond_to do |format|
      format.html { redirect_to tipo_gestions_url }
      format.json { head :no_content }
    end
  end
end
