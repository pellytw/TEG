class PersonasController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /personas
  # GET /personas.json
  def index
    @personas = Persona.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personas }
    end
  end

  # GET /personas/1
  # GET /personas/1.json
  def show
    @persona = Persona.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @persona }
    end
  end

  # GET /personas/new
  # GET /personas/new.json
  def new
    @persona = Persona.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @persona }
    end
  end

  # GET /personas/1/edit
  def edit
    @persona = Persona.find(params[:id])
  end

  # POST /personas
  # POST /personas.json
  def create
    @persona = Persona.new(params[:persona])
    #acá vemos si el usuario puede registrarse en el boleto. Para eso debe tener el rol user
    if (current_user.role? :user) then
      @persona.user_id = current_user.id
      debugger
      respond_to do |format|
        if @persona.save
          format.html { redirect_to @persona, notice: 'Se ha registrado correctamente. Para finalizar su registro debe confirmar su cuenta de correo.' }
          format.json { render json: @persona, status: :created, location: @persona }
        else
          format.html { render action: "new" }
          format.json { render json: @persona.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to "/personas", alert: 'No tiene permisos para registrarse.' }
        format.json { head :no_content }
      end
    end

    
  end

  # PUT /personas/1
  # PUT /personas/1.json
  def update
    @persona = Persona.find(params[:id])

    respond_to do |format|
      if @persona.update_attributes(params[:persona])
        format.html { redirect_to @persona, notice: 'Persona se ha actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personas/1
  # DELETE /personas/1.json
  def destroy
    @persona = Persona.find(params[:id])
    @persona.destroy

    respond_to do |format|
      format.html { redirect_to personas_url }
      format.json { head :no_content }
    end
  end
end
