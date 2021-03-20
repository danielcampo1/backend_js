class Api::V1::CategoriesController < ApplicationController

    def index
        category = Category.all
        render json: CategorySerializer.new(category)
    end
end
