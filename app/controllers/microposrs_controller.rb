class MicroposrsController < ApplicationController
  # GET /microposrs
  # GET /microposrs.json
  def index
    @microposrs = Microposr.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microposrs }
    end
  end

  # GET /microposrs/1
  # GET /microposrs/1.json
  def show
    @microposr = Microposr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microposr }
    end
  end

  # GET /microposrs/new
  # GET /microposrs/new.json
  def new
    @microposr = Microposr.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microposr }
    end
  end

  # GET /microposrs/1/edit
  def edit
    @microposr = Microposr.find(params[:id])
  end

  # POST /microposrs
  # POST /microposrs.json
  def create
    @microposr = Microposr.new(params[:microposr])

    respond_to do |format|
      if @microposr.save
        format.html { redirect_to @microposr, notice: 'Microposr was successfully created.' }
        format.json { render json: @microposr, status: :created, location: @microposr }
      else
        format.html { render action: "new" }
        format.json { render json: @microposr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microposrs/1
  # PUT /microposrs/1.json
  def update
    @microposr = Microposr.find(params[:id])

    respond_to do |format|
      if @microposr.update_attributes(params[:microposr])
        format.html { redirect_to @microposr, notice: 'Microposr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microposr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposrs/1
  # DELETE /microposrs/1.json
  def destroy
    @microposr = Microposr.find(params[:id])
    @microposr.destroy

    respond_to do |format|
      format.html { redirect_to microposrs_url }
      format.json { head :no_content }
    end
  end
end
