class SessionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_service

  def setup
    case @service.provider.omniauth_name
    when "twitter"
      request.env['omniauth.strategy'].options[:consumer_key]    = @service.api_key
      request.env['omniauth.strategy'].options[:consumer_secret] = @service.api_secret
    #when "shopify"
      #request.env['omniauth.strategy'].options[:client_id]     = @service.api_key
      #request.env['omniauth.strategy'].options[:client_secret] = @service.api_secret
      #request.env['omniauth.strategy'].options[:client_options] = { site: 'https://trendly-2.myshopify.com' }
    else
      request.env['omniauth.strategy'].options[:client_id]     = @service.api_key
      request.env['omniauth.strategy'].options[:client_secret] = @service.api_secret
    end

    #request.env['omniauth.strategy'].options[:scope] = @service.scope

    render :text => "Omniauth setup phase.", :status => 404
  end

  def callback
    @token = @service.tokens.create(scope: @service.scope, auth: request.env["omniauth.auth"].to_hash)
    redirect_to project_service_path(@service.project, @service, anchor: "token_#{@token.id}")
  end

  def failure
    flash[:alert] = request.env["omniauth.error"].to_s
    redirect_to project_service_path(@service.project, @service)
  end

  private

    def set_service
      @service = current_user.services.find(session[:service_id])
    end
end
