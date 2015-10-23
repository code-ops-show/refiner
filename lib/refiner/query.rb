module Refiner
  module Query
    extend ActiveSupport::Concern

    included do 
      helper_method :refiner_query
    end

    def refiner_query
      Hash[*params[:query].split(/\//)] rescue {}
    end
  end
end 