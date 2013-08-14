class ParteobrasController < ApplicationController
  # GET /parteobras
  # GET /parteobras.json

  def values_partidasdecontrol
    id = params[:id]
    @partidasdecontrols = Partidasdecontrol.where(subsectore_id: id).all

    respond_to do |format|
      format.html {render :layout => 'select'}
    end
  end


  def index
    @parteobras = Parteobra.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parteobras }
    end
  end

  # GET /parteobras/1
  # GET /parteobras/1.json
  def show
    @parteobra = Parteobra.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Hola mundo"
        send_data pdf.render, type: "application/pdf", disposition: "inline"
      end
    end
  end

  # GET /parteobras/new
  # GET /parteobras/new.json
  def new
    @parteobra = Parteobra.new
    @listacategorias = Listacategoria.all
    @partidasdecontrols = Partidasdecontrol.all 
    @sectores = Sectore.all   

    5.times do 
      @parteobra.descompociciones.build         
    end

    15.times do 
      @parteobra.partidas.build
    end

    20.times do      
      @parteobra.materiales.build      
      @parteobra.equipos.build       
    end


    #@parteobratemp = Parteobra.last    
    #@parteobraid = @parteobratemp[:id] + 1

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parteobra }
    end
  end

  # GET /parteobras/1/edit
  def edit
    @parteobra = Parteobra.find(params[:id])
    @listacategorias = Listacategoria.all
    @sectores = Sectore.all 

    5.times do 
      @parteobra.descompociciones.build         
    end

    15.times do 
      @parteobra.partidas.build
    end

    (20 - @parteobra.partidas.count).times do       
      @parteobra.materiales.build
      @parteobra.equipos.build         
    end
  end

  # POST /parteobras
  # POST /parteobras.json

  def create
    @parteobra = Parteobra.new(params[:parteobra]) 

	@listacategorias = Listacategoria.all
    @partidasdecontrols = Partidasdecontrol.all 
    @sectores = Sectore.all   

    5.times do 
      @parteobra.descompociciones.build         
    end

    15.times do 
      @parteobra.partidas.build
    end

    20.times do      
      @parteobra.materiales.build      
      @parteobra.equipos.build       
    end    
    
    #@parteobra.save    
    #redirect_to "/parteobras"

	respond_to do |format|
      if @parteobra.save
        format.html { redirect_to @parteobra, notice: 'Partida was successfully created.' }
        format.json { render json: @parteobra, status: :created, location: @parteobra }
      else
        format.html { render action: "new" }
        format.json { render json: @parteobra.errors, status: :unprocessable_entity }
      end
    end    

  end


  # PUT /parteobras/1
  # PUT /parteobras/1.json
  def update
    @parteobra = Parteobra.find(params[:id])

    respond_to do |format|
      if @parteobra.update_attributes(params[:parteobra])
        format.html { redirect_to @parteobra, notice: 'Parteobra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parteobra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parteobras/1
  # DELETE /parteobras/1.json
  def destroy
    @parteobra = Parteobra.find(params[:id])
    @parteobra.destroy

    respond_to do |format|
      format.html { redirect_to parteobras_url }
      format.json { head :no_content }
    end
  end
end
