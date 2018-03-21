class CuffTypesController < InheritedResources::Base

  private

    def cuff_type_params
      params.require(:cuff_type).permit(:name)
    end
end

