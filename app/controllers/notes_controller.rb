class NotesController < ApplicationController
  before_action :set_note, only: [:edit, :update]

  def new
    @order = Order.find(params[:order_id])
    @note = @order.build_note
  end

  def edit
  end

  def create
    @order = Order.find(params[:order_id])
    @note = @order.build_note(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to(orders_url, :alert => 'Note added')}
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  private

  def set_note
    @note = Note.find_by_order_id(params[:order_id])
  end

  def note_params
    params.require(:note).permit(:title, :description)
  end
end

