class TablesController < ApplicationController
    
  def index
    @tables = Table.all
  end
  
  def new
    @table = Table.new
  end
  
  def create
    @table = Table.new(table_params)
    if @table.save
      redirect_to @table
    else
      flash[:danger] = @restaurant.errors.full_messages.to_sentence
      render 'new'
    end
  end
  
  def show
    
  end
    
    
  private
  
  def set_table
    @table = Table.find(params[:id])
  end
  
  def table_params
    params.require(:table).permit(:seats, :restaurant_id)
  end
end