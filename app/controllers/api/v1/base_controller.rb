class Api::V1::BaseController < ApplicationController
  oauthenticate :interactive => false
end
