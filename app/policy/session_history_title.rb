class SessionHistoryTitle
  def call
    SessionHistory.column_names
  end
end
