class ClosetItemsController < ApplicationController
  # GET /closet_items
  # GET /closet_items.json
  def index
    @closet_items = ClosetItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @closet_items }
    end
  end

  # GET /closet_items/1
  # GET /closet_items/1.json
  def show
    @closet_item = ClosetItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @closet_item }
    end
  end

  # GET /closet_items/new
  # GET /closet_items/new.json
  def new
    @closet_item = ClosetItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @closet_item }
    end
  end

  # GET /closet_items/1/edit
  def edit
    @closet_item = ClosetItem.find(params[:id])
  end

  # POST /closet_items
  # POST /closet_items.json
  def create
    @closet_item = ClosetItem.new(params[:closet_item])

    respond_to do |format|
      if @closet_item.save
        format.html { redirect_to @closet_item, notice: 'Closet item was successfully created.' }
        format.json { render json: @closet_item, status: :created, location: @closet_item }
      else
        format.html { render action: "new" }
        format.json { render json: @closet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /closet_items/1
  # PUT /closet_items/1.json
  def update
    @closet_item = ClosetItem.find(params[:id])

    respond_to do |format|
      if @closet_item.update_attributes(params[:closet_item])
        format.html { redirect_to @closet_item, notice: 'Closet item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @closet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /closet_items/1
  # DELETE /closet_items/1.json
  def destroy
    @closet_item = ClosetItem.find(params[:id])
    @closet_item.destroy

    respond_to do |format|
      format.html { redirect_to closet_items_url }
      format.json { head :no_content }
    end
  end
end
