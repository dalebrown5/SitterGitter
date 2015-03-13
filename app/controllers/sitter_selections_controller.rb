class SitterSelectionsController < ApplicationController

  def create
    @sitter = Sitter.find(params[:sitter_id])
    sitter_selection = current_user.sitter_selections.build(sitter: @sitter) 
 
    if sitter_selection.save
      redirect_to sitters_url
    else
      flash[:error] = "Selection not saved."
      redirect_to sitters_url
    end
  end

  def destroy
    @sitter = Sitter.find(params[:sitter_id])
    sitter_selection = current_user.sitter_selections.find(params[:id]) 
 
    if sitter_selection.destroy
      redirect_to sitters_url
    else
      flash[:error] = "Selection not removed."
      redirect_to sitters_url
    end
  end
end
