class TokensController < ApplicationController
  before_action :set_service
  before_action :set_token

  def destroy
    @service = @token.service
    @token.destroy
    redirect_to project_service_path(@service.project, @service)
  end

  private

    def set_service
      @service = Service.find(params[:service_id])
    end

    def set_token
      @token = @service.tokens.find(params[:id])
    end
end
