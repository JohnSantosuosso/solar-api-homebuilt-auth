class Api::V1::BaseController < ApplicationController
  include ApiKeyAuthenticatable

  before_action :authenticate_with_api_key!
end