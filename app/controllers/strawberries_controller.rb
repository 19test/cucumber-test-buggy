class StrawberriesController < ApplicationController
  # GET /strawberries
  # GET /strawberries.json
  def index
    @strawberries = Strawberry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @strawberries }
    end
  end

  # GET /strawberries/1
  # GET /strawberries/1.json
  def show
    @strawberry = Strawberry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @strawberry }
    end
  end

  # GET /strawberries/new
  # GET /strawberries/new.json
  def new
    @strawberry = Strawberry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @strawberry }
    end
  end

  # GET /strawberries/1/edit
  def edit
    @strawberry = Strawberry.find(params[:id])
  end

  # POST /strawberries
  # POST /strawberries.json
  def create
    @strawberry = Strawberry.new(params[:strawberry])

    respond_to do |format|
      if @strawberry.save
        format.html { redirect_to @strawberry, notice: 'Strawberry was successfully created.' }
        format.json { render json: @strawberry, status: :created, location: @strawberry }
      else
        format.html { render action: "new" }
        format.json { render json: @strawberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /strawberries/1
  # PUT /strawberries/1.json
  def update
    @strawberry = Strawberry.find(params[:id])

    respond_to do |format|
      if @strawberry.update_attributes(params[:strawberry])
        format.html { redirect_to @strawberry, notice: 'Strawberry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @strawberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strawberries/1
  # DELETE /strawberries/1.json
  def destroy
    @strawberry = Strawberry.find(params[:id])
    @strawberry.destroy

    respond_to do |format|
      format.html { redirect_to strawberries_url }
      format.json { head :no_content }
    end
  end
end
