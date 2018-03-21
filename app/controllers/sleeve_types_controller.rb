class SleeveTypesController < InheritedResources::Base

  private

    def sleeve_type_params
      params.require(:sleeve_type).permit(:name)
    end
end

