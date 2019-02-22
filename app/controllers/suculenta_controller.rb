class SuculentaController < InheritedResources::Base


  def new
  end

  def allImages
      @suculentum = Suculenta.all
  end

  def create
    @suculentum = Suculenta.new suculentum_params
    @suculentum.save

    redirect_to @suculentum
  end

  def show
    @suculentum = Suculenta.find params[:idSuculent]
  end
  private

    def suculentum_params
      params.require(:suculentum).permit(:idSuculent, :name, :idOrgan, :idFamily, :idSustrato, :temp, :image)
    end


end
