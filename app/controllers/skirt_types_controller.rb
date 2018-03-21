class SkirtTypesController < InheritedResources::Base

  private

    def skirt_type_params
      params.require(:skirt_type).permit(:name)
    end
end

