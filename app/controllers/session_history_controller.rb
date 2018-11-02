class SessionHistoryController < ApplicationController
  def index
    @sessions = SessionHistory.all
    @columns = SessionHistory.column_names
  end

  def import
    ParseCsv.new.import(import_params)
    redirect_to root_url, notice: 'Data imported'
  end

  private

  def import_params
    params[:file]
  end
end
