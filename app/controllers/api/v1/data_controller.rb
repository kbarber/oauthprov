class Api::V1::DataController < Api::V1::BaseController
  def show
    respond_to do |format|
      format.json do
        render :json => {:super_secret => "oauth_data"}
      end
    end
  end
end
