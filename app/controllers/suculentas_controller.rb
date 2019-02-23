class SuculentasController < InheritedResources::Base

  private

  def suculenta_params
    params.require(:suculenta).permit(:idSuculent, :name, :idOrgan, :idFamily, :idSustrato, :temp, :image)
  end
end
