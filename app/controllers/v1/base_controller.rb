module V1
  class BaseController < ApplicationController
    before_action :set_resource, only: [:show, :update, :destroy]

    def index
      @resources = resource_class.all

      render json: { resource_key => @resources }
    end

    def show
      render json: @resource
    end

    def create
      @resource = resource_class.new(resource_params)

      if @resource.save
        render json: @resource, status: :created
      else
        render json: @resource.errors, status: :unprocessable_entity
      end
    end

    def update
      if @resource.update(resource_params)
        head :no_content
      else
        render json: @resource.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @resource.destroy

      head :no_content
    end

    private

    def set_resource
      @resource = resource_class.find(params[:id])
    end
  end
end
