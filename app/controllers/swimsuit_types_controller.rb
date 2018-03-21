class SwimsuitTypesController < InheritedResources::Base

  private

    def swimsuit_type_params
      params.require(:swimsuit_type).permit(:name)
    end
end

