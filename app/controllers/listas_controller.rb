class ListasController < ApplicationController
  # GET /listas
  # GET /listas.json
  def index    
    @listas = Lista.paginate(:page => params[:page], :per_page => 15).order('id Desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @listas }
    end
  end

  # GET /listas/1
  # GET /listas/1.json
  def show
    @lista = Lista.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lista }
    end
  end

  # GET /listas/new
  # GET /listas/new.json
  def new
    @lista = Lista.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lista }
    end
  end

  # GET /listas/1/edit
  def edit
    @lista = Lista.find(params[:id])
  end

  # POST /listas
  # POST /listas.json
  def create
    @lista = Lista.new(params[:lista])

    respond_to do |format|
      if @lista.save
        format.html { redirect_to @lista, notice: 'Lista was successfully created.' }
        format.json { render json: @lista, status: :created, location: @lista }
      else
        format.html { render action: "new" }
        format.json { render json: @lista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /listas/1
  # PUT /listas/1.json
  def update
    @lista = Lista.find(params[:id])

    respond_to do |format|
      if @lista.update_attributes(params[:lista])
        format.html { redirect_to @lista, notice: 'Lista was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listas/1
  # DELETE /listas/1.json
  def destroy
    @lista = Lista.find(params[:id])
    @lista.destroy

    respond_to do |format|
      format.html { redirect_to listas_url }
      format.json { head :no_content }
    end
  end
end
