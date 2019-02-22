class SustratosController < InheritedResources::Base

  private

    def sustrato_params
      params.require(:sustrato).permit(:idSustrato, :sustrato)
    end
end

