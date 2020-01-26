class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render json: @entries
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
       render json: @entry
     else
       render json: {error: 'Error creating entry'}
     end
  end

  def show
    @entry = Entry.find(params[:id])
    render json: @entry
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(content: params[:entry][:content])
    @entry.save
    render json: @entry
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.delete
    render json: @entry
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :content, :date)
  end
end
