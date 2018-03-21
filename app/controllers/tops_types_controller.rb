class TopsTypesController < InheritedResources::Base

  private

    def tops_type_params
      params.require(:tops_type).permit(:name)
    end
end

