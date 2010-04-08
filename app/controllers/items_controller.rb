class ItemsController < ApplicationController
  before_filter :find_list
  
  def create
    @item = @list.items.new(params[:item])

    respond_to do |format|
      if @item.save
        flash[:notice] = 'Item added!'
        format.html { redirect_to(@list) }
        format.xml  { render :xml => @item, :status => :created, :location => @item }
      else
        flash[:notice] = 'Item could not be added!'
        format.html { redirect_to(@list) }
        format.xml  { render :xml => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @item = @list.items.find(params[:id])
    @item.destroy
    flash[:notice] = 'Item completed!'

    respond_to do |format|
      format.html { redirect_to(@list) }
      format.xml  { head :ok }
    end
  end
  
private
  def find_list
    @list = List.find(params[:list_id])
  end
end
