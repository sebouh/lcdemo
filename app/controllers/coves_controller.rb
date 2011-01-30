class CovesController < ApplicationController
  # GET /coves
  # GET /coves.xml
  def index
    @coves = Cove.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @coves }
    end
  end

  # GET /coves/1
  # GET /coves/1.xml
  def show
    @cove = Cove.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cove }
    end
  end

  # GET /coves/new
  # GET /coves/new.xml
  def new
    @cove = Cove.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cove }
    end
  end

  # GET /coves/1/edit
  def edit
    @cove = Cove.find(params[:id])
  end

  # POST /coves
  # POST /coves.xml
  def create
    @cove = Cove.new(params[:cove])

    respond_to do |format|
      if @cove.save
        format.html { redirect_to(@cove, :notice => 'Cove was successfully created.') }
        format.xml  { render :xml => @cove, :status => :created, :location => @cove }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cove.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coves/1
  # PUT /coves/1.xml
  def update
    @cove = Cove.find(params[:id])

    respond_to do |format|
      if @cove.update_attributes(params[:cove])
        format.html { redirect_to(@cove, :notice => 'Cove was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cove.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coves/1
  # DELETE /coves/1.xml
  def destroy
    @cove = Cove.find(params[:id])
    @cove.destroy

    respond_to do |format|
      format.html { redirect_to(coves_url) }
      format.xml  { head :ok }
    end
  end
end
