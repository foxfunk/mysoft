class ComentariosAdminsController < ApplicationController
  # GET /comentarios_admins
  # GET /comentarios_admins.json
  def index
    @comentarios_admins = ComentariosAdmin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comentarios_admins }
    end
  end

  # GET /comentarios_admins/1
  # GET /comentarios_admins/1.json
  def show
    @comentarios_admin = ComentariosAdmin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comentarios_admin }
    end
  end

  # GET /comentarios_admins/new
  # GET /comentarios_admins/new.json
  def new
    @comentarios_admin = ComentariosAdmin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comentarios_admin }
    end
  end

  # GET /comentarios_admins/1/edit
  def edit
    @comentarios_admin = ComentariosAdmin.find(params[:id])
  end

  # POST /comentarios_admins
  # POST /comentarios_admins.json
  def create
    @comentarios_admin = ComentariosAdmin.new(params[:comentarios_admin])

    respond_to do |format|
      if @comentarios_admin.save
        format.html { redirect_to @comentarios_admin, notice: 'Comentarios admin was successfully created.' }
        format.json { render json: @comentarios_admin, status: :created, location: @comentarios_admin }
      else
        format.html { render action: "new" }
        format.json { render json: @comentarios_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comentarios_admins/1
  # PUT /comentarios_admins/1.json
  def update
    @comentarios_admin = ComentariosAdmin.find(params[:id])

    respond_to do |format|
      if @comentarios_admin.update_attributes(params[:comentarios_admin])
        format.html { redirect_to @comentarios_admin, notice: 'Comentarios admin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comentarios_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentarios_admins/1
  # DELETE /comentarios_admins/1.json
  def destroy
    @comentarios_admin = ComentariosAdmin.find(params[:id])
    @comentarios_admin.destroy

    respond_to do |format|
      format.html { redirect_to comentarios_admins_url }
      format.json { head :no_content }
    end
  end
end
