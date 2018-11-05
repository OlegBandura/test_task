class SessionHistoryController < ApplicationController
  def index
    @sessions ||= sessions
    @graphics ||= graphics
    @columns ||= columns
  end

  def import
    ParseCsv.new.import(import_params)
    redirect_to root_url, notice: 'Data imported'
  end

  private

  def sessions
    SessionHistoryData.new.call.page(params[:page]).per(10)
  end

  def columns
    SessionHistoryTitle.new.call
  end

  def graphics
    SessionHistoryData.new.call
  end

  def import_params
    params[:file]
  end
end
