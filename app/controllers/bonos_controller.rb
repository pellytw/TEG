class BonosController < ApplicationController
  # GET /bonos
  # GET /bonos.json
  def index
    @bonos = Bono.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bonos }
    end
  end

  # GET /bonos/1
  # GET /bonos/1.json
  def show
    @bono = Bono.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bono }
    end
  end

  # GET /bonos/new
  # GET /bonos/new.json
  def new
    @bono = Bono.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bono }
    end
  end

  # GET /bonos/1/edit
  def edit
    @bono = Bono.find(params[:id])
  end

  # POST /bonos
  # POST /bonos.json
  def create
    @bono = Bono.new(params[:bono])
    @bono.fecha_emision = Time.now
    @bono.emisor = current_user.id

    respond_to do |format|
      if @bono.save
        format.html { redirect_to @bono, notice: 'Bono creado correctamente.' }
        format.json { render json: @bono, status: :created, location: @bono }
      else
        format.html { render action: "new" }
        format.json { render json: @bono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bonos/1
  # PUT /bonos/1.json
  def update
    @bono = Bono.find(params[:id])

    respond_to do |format|
      if @bono.update_attributes(params[:bono])
        format.html { redirect_to @bono, notice: 'Bono actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bonos/1
  # DELETE /bonos/1.json
  def destroy
    @bono = Bono.find(params[:id])
    @bono.destroy

    respond_to do |format|
      format.html { redirect_to bonos_url }
      format.json { head :no_content }
    end
  end
  def entrega
    @bono = Bono.find(params[:id])
    @bono.entregado = true
    @bono.fecha_entregado = Time.now

    respond_to do |format|
      if @bono.update_attributes(params[:bono])
        format.html { redirect_to bonos_url, notice: 'Bono entregado!' }
        format.json { head :no_content }
      else
        format.html { redirect_to bonos_url, notice: 'No se pudo entregar el bono!' }
        format.json { head :no_content }
      end
    end
  end
end
