module Api
  class MarksController < ApplicationController        
    def create
      @mark = Mark.new(mark_params)
      if @mark.save
        render json: @mark, status: :created
      else
        render json: @mark.errors, status: :unprocessable_entity
      end
    end

    private

    def mark_params
      params.require(:mark).permit(:value, :post_id)
    end
  end
end
