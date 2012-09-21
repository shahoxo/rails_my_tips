class JojolionsController < ApplicationController
  # GET /jojolions
  # GET /jojolions.json
  def index
    @jojolions = Jojolion.all
    session[:prime] = Prime.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jojolions }
    end
  end

  # GET /jojolions/1
  # GET /jojolions/1.json
  def show
    @jojolion = Jojolion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jojolion }
    end
  end

  # GET /jojolions/new
  # GET /jojolions/new.json
  def new
    @jojolion = Jojolion.new
    @prime = session[:prime]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jojolion }
    end
  end

  # GET /jojolions/1/edit
  def edit
    @jojolion = Jojolion.find(params[:id])
  end

  # POST /jojolions
  # POST /jojolions.json
  def create
    @jojolion = Jojolion.new(params[:jojolion])

    respond_to do |format|
      if @jojolion.save
        format.html { redirect_to @jojolion, notice: 'Jojolion was successfully created.' }
        format.json { render json: @jojolion, status: :created, location: @jojolion }
      else
        format.html { render action: "new" }
        format.json { render json: @jojolion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jojolions/1
  # PUT /jojolions/1.json
  def update
    @jojolion = Jojolion.find(params[:id])

    respond_to do |format|
      if @jojolion.update_attributes(params[:jojolion])
        format.html { redirect_to @jojolion, notice: 'Jojolion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jojolion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jojolions/1
  # DELETE /jojolions/1.json
  def destroy
    @jojolion = Jojolion.find(params[:id])
    @jojolion.destroy

    respond_to do |format|
      format.html { redirect_to jojolions_url }
      format.json { head :no_content }
    end
  end
end
