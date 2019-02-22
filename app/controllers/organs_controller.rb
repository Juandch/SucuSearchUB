class OrgansController < InheritedResources::Base

  private

    def organ_params
      params.require(:organ).permit(:idOrgan, :organ)
    end
end

