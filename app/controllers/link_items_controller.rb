class LinkItemsController < ApplicationController
  # GET /link_items
  # GET /link_items.json
  def index
    @link_items = LinkItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @link_items }
    end
  end

  # GET /link_items/1
  # GET /link_items/1.json
  def show
    @link_item = LinkItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link_item }
    end
  end

  # GET /link_items/new
  # GET /link_items/new.json
  def new
    @link_item = LinkItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link_item }
    end
  end

  # GET /link_items/1/edit
  def edit
    @link_item = LinkItem.find(params[:id])
  end

  # POST /link_items
  # POST /link_items.json
  def create
    @link_item = LinkItem.new(params[:link_item])

    respond_to do |format|
      if @link_item.save
        format.html { redirect_to @link_item, notice: 'Link item was successfully created.' }
        format.json { render json: @link_item, status: :created, location: @link_item }
      else
        format.html { render action: "new" }
        format.json { render json: @link_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /link_items/1
  # PUT /link_items/1.json
  def update
    @link_item = LinkItem.find(params[:id])

    respond_to do |format|
      if @link_item.update_attributes(params[:link_item])
        format.html { redirect_to @link_item, notice: 'Link item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /link_items/1
  # DELETE /link_items/1.json
  def destroy
    @link_item = LinkItem.find(params[:id])
    @link_item.destroy

    respond_to do |format|
      format.html { redirect_to link_items_url }
      format.json { head :no_content }
    end
  end
end
