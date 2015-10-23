module Refiner
  module Query
    extend ActiveSupport::Concern

    included do 
      helper_method :refiner_query
      helper_method :segment_refiner_query_by
    end

    def segment_refiner_query_by(*detectors)
      refiner_query.slice(*detectors) rescue {}
    end

    def refiner_query
      Hash[*params[:query].split(/\//)] rescue {}
    end
  end
end 