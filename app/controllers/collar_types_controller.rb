class CollarTypesController < InheritedResources::Base

  private

    def collar_type_params
      params.require(:collar_type).permit(:name)
    end
end

