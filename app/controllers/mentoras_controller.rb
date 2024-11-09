class MentorasController < ApplicationController
  before_action :set_mentora, only: [:update, :destroy, :show, :edit]
  def index
    @mentoras = Mentora.all
  end

  def show; end

  def new
    @mentora = Mentora.new
  end

  def create
    @mentora = Mentora.new(mentora_params)
    if @mentora.save
      redirect_to @mentora
    else
      render :new
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @mentora.update(mentora_params)
        format.html { redirect_to @mentora, notice: "Mentora atualizada com sucesso!" }
      else
        render :edit
      end
    end
  end

  def destroy
    @mentora.destroy
    redirect_to mentoras_path
  end

  private

  def mentora_params
    params.require(:mentora).permit(:nome, :email, :telefone, :habilidades)
  end

  def set_mentora
    @mentora = Mentora.find(params[:id])
  end
end
