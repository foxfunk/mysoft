class ComentarioxesController < ApplicationController
  # GET /comentarioxes
  # GET /comentarioxes.json
  def index
    @comentarioxes = Comentariox.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comentarioxes }
    end
  end

  # GET /comentarioxes/1
  # GET /comentarioxes/1.json
  def show
    @comentariox = Comentariox.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comentariox }
    end
  end

  # GET /comentarioxes/new
  # GET /comentarioxes/new.json
  def new
    @comentariox = Comentariox.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comentariox }
    end
  end

  # GET /comentarioxes/1/edit
  def edit
    @comentariox = Comentariox.find(params[:id])
  end

  # POST /comentarioxes
  # POST /comentarioxes.json
  def create
    @comentariox = Comentariox.new(params[:comentariox])

    respond_to do |format|
      if @comentariox.save
        format.html { redirect_to @comentariox, notice: 'Comentariox was successfully created.' }
        format.json { render json: @comentariox, status: :created, location: @comentariox }
      else
        format.html { render action: "new" }
        format.json { render json: @comentariox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comentarioxes/1
  # PUT /comentarioxes/1.json
  def update
    @comentariox = Comentariox.find(params[:id])

    respond_to do |format|
      if @comentariox.update_attributes(params[:comentariox])
        format.html { redirect_to @comentariox, notice: 'Comentariox was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comentariox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentarioxes/1
  # DELETE /comentarioxes/1.json
  def destroy
    @comentariox = Comentariox.find(params[:id])
    @comentariox.destroy

    respond_to do |format|
      format.html { redirect_to comentarioxes_url }
      format.json { head :no_content }
    end
  end
end
