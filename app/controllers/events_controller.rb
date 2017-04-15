class EventsController < ApplicationController

  def create
    event = Event.new(event_params)
    if event.save
      flash[:success] = 'Nota ingresada con éxito'
    else
      flash[:warning] = 'No se pudo guardar correctamente'
    end
    redirect_to root_path
  end

  def destroy
    event = Event.find(params[:id])
    if event.destroy
      flash[:success] = 'Nota eliminada con éxito'
    else
      flash[:warning] = 'No se pudo eliminar correctamente'
    end
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description)
  end
end
