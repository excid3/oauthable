class SessionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_service

  def setup
    case @service.provider.omniauth_name
    when "twitter"
      request.env['omniauth.strategy'].options[:consumer_key]    = @service.api_key
      request.env['omniauth.strategy'].options[:consumer_secret] = @service.api_secret
    else
      request.env['omniauth.strategy'].options[:client_id]     = @service.api_key
      request.env['omniauth.strategy'].options[:client_secret] = @service.api_secret
    end

    render :text => "Omniauth setup phase.", :status => 404
  end

  def callback
    @token = @service.tokens.create(auth: request.env["omniauth.auth"].to_hash)
    redirect_to service_path(@service, anchor: "token_#{@token.id}")
  end

  private

    def set_service
      @service = current_user.services.find(session[:service_id])
    end
end
